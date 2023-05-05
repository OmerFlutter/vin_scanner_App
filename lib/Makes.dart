// ignore_for_file: file_names

class Makes {
  int? count;
  String? message;
  String? searchCriteria;
  List<Results>? results;

  Makes(
      {required this.count,
      required this.message,
      required this.searchCriteria,
      required this.results});

  Makes.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = <Results>[];
      json['Results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Count'] = count;
    data['Message'] = message;
    data['SearchCriteria'] = searchCriteria;
    if (results != null) {
      data['Results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? makeId;
  String? makeName;
  int? vehicleTypeId;
  String? vehicleTypeName;

  Results(
      {required this.makeId,
      required this.makeName,
      required this.vehicleTypeId,
      required this.vehicleTypeName});

  Results.fromJson(Map<String, dynamic> json) {
    makeId = json['MakeId'];
    makeName = json['MakeName'];
    vehicleTypeId = json['VehicleTypeId'];
    vehicleTypeName = json['VehicleTypeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MakeId'] = makeId;
    data['MakeName'] = makeName;
    data['VehicleTypeId'] = vehicleTypeId;
    data['VehicleTypeName'] = vehicleTypeName;
    return data;
  }
}
