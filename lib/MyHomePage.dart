// ignore_for_file: library_private_types_in_public_api, file_names, avoid_print

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';

import 'package:vin/ModelDialog.dart';

import 'MakeDialog.dart';
import 'Makes.dart';
import 'Models.dart';
import 'VinInfo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Makes

Future<Makes> fetchMakes(http.Client client) async {
  final response = await client.get(
      'https://vpic.nhtsa.dot.gov/api/vehicles/GetMakesForVehicleType/car?format=json'
          as Uri);

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseMakes, response.body);
}

// A function that converts a response body into a List<Photo>.
Makes parseMakes(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return Makes.fromJson(parsed);
}

//Models

Future<Models> fetchModels(http.Client client, String make) async {
  final response = await client.get(
      ('https://vpic.nhtsa.dot.gov/api/vehicles/GetModelsForMake/$make?format=json')
          as Uri);

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseModels, response.body);
}

// A function that converts a response body into a List<Photo>.

Models parseModels(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return Models.fromJson(parsed);
}

//Models

Future<VinInfo> fetchVinInfo(http.Client client, String vin) async {
  final response = await client.get(
      ('https://vpic.nhtsa.dot.gov/api/vehicles/decodevinvaluesextended/$vin?format=json')
          as Uri);

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseVinInfo, response.body);
}

// A function that converts a response body into a List<Photo>.

VinInfo parseVinInfo(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return VinInfo.fromJson(parsed);
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController vinController = TextEditingController();
  List<String> makeStrings = <String>[];
  List<String> modelStrings = <String>[];
  String makeTitle = "Choose Make";
  String modelTitle = "Choose Model";
  String barcode = "";
  Future<void> scan() async {
    PermissionStatus status = await Permission.camera.status;
    if (!status.isGranted) {
      PermissionStatus permissionStatus = await Permission.camera.request();
      if (permissionStatus.isDenied) {
        setState(() {
          barcode = 'The user did not grant camera permission!';
        });
        return;
      }
    }

    try {
      String barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // Color for the scan button
        'Cancel', // Text for the cancel button
        true, // Whether to show the flash icon
        ScanMode.DEFAULT, // Scan mode (ScanMode.QR for QR codes)
      );
      setState(() {
        this.barcode = barcode;
      });
      // print("barcode is $barcode");
      getVinInfo(barcode);
    } on PlatformException catch (e) {
      setState(() {
        barcode = 'Unknown error: $e';
      });
    } on FormatException {
      setState(() {
        barcode =
            'null (User returned using the "back" button before scanning anything)';
      });
    } catch (e) {
      setState(() {
        barcode = 'Unknown error: $e';
      });
    }
  }

  @override
  void initState() {
    super.initState();

    fetchMakes(http.Client()).then((value) {
      setState(() {
        List<Results>? results = value.results;
        for (var i in results!) {
          if (kDebugMode) {
            print("make is ${i.makeName}");
          }
          makeStrings.add(i.makeName.toString());
        }
        makeStrings.sort();
      });
    });
  }

  Future<void>? getVinInfo(String vinText) {
    fetchVinInfo(http.Client(), vinText).then((VinInfo vinInfo) {
      List<VinResults>? vinResults = vinInfo.results;
      print("vin results length is ${vinResults!.length}");
      setState(() {
        if (vinResults.isNotEmpty) {
          VinResults result = vinResults[0];
          makeTitle = result.make!;
          modelTitle = result.model!;
          print("this make is $makeTitle. this model is $modelTitle");
          modelStrings.add(modelTitle);
        }
      });
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 45,
                child: ElevatedButton(
                  onPressed: scan,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: const Text(
                    "Scan",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                barcode,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context)
                      .colorScheme
                      .secondary, // Use the secondary color
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: vinController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Enter a VIN",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Get VIN Info", style: TextStyle(fontSize: 16)),
                ),
                onPressed: () {
                  var vinText = vinController.text;
                  if (vinText.isNotEmpty) {
                    getVinInfo(vinText);
                  }
                },
              ),
              const SizedBox(height: 16.0),
              Container(
                height: 3.0,
                color: Colors.grey,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: (makeStrings.isEmpty)
                    ? null
                    : () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return MakeDialog(
                              makeStrings: makeStrings,
                              makeCallback: (value) {
                                print("make chosen was $value");
                                setState(() {
                                  makeTitle = value;
                                  fetchModels(http.Client(), makeTitle)
                                      .then((models) {
                                    setState(() {
                                      List<ModelResults>? modelResults =
                                          models.results;
                                      for (var model in modelResults!) {
                                        print("model is ${model.modelName}");
                                        modelStrings
                                            .add(model.modelName.toString());
                                      }
                                      modelStrings.sort();
                                    });
                                  });
                                });
                              },
                            );
                          },
                        );
                      },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(makeTitle, style: const TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: (modelStrings.isEmpty)
                    ? null
                    : () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ModelDialog(
                              modelStrings: modelStrings,
                              modelCallback: (String model) {
                                print("chosen model was $model");
                                setState(() {
                                  modelTitle = model;
                                });
                              },
                            );
                          },
                        );
                      },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(modelTitle, style: const TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
