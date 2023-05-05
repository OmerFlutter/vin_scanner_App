// ignore_for_file: file_names

class Models {
  int? count;
  String? message;
  String? searchCriteria;
  List<ModelResults>? results;

  Models(
      {required this.count,
      required this.message,
      required this.searchCriteria,
      required this.results});

  Models.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = <ModelResults>[];
      json['Results'].forEach((v) {
        results!.add(ModelResults.fromJson(v));
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

class ModelResults {
  int? makeID;
  String? makeName;
  int? modelID;
  String? modelName;

  ModelResults(
      {required this.makeID,
      required this.makeName,
      required this.modelID,
      required this.modelName});

  ModelResults.fromJson(Map<String, dynamic> json) {
    makeID = json['Make_ID'];
    makeName = json['Make_Name'];
    modelID = json['Model_ID'];
    modelName = json['Model_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Make_ID'] = makeID;
    data['Make_Name'] = makeName;
    data['Model_ID'] = modelID;
    data['Model_Name'] = modelName;
    return data;
  }
}
