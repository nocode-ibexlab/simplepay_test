import 'dart:collection';

import 'type/DataSet.dart';
import 'type/Errors.dart';

class OutputMessage implements DataSet {
  List Errors = [];

  OutputMessage();

  OutputMessage.fromJson(Map json)
      : Errors = json['Errors'] == null
            ? <ErrorsResponse>[]
            : json['Errors']
                .map<ErrorsResponse>((json) => ErrorsResponse.fromJson(json))
                .toList();

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    List list = [];
    for (ErrorsResponse errors in Errors) {
      list.add(errors.toMap());
    }
    map['Errors'] = list;
    return map;
  }

  List<ErrorsResponse>? getErrors() {
    return Errors as List<ErrorsResponse>?;
  }

  void setErrors(List<ErrorsResponse> errors) {
    Errors = errors;
  }
}
