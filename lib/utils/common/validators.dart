import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Validator {
  static String? validateDomain(value, VoidCallback callback) {
    if (value == null) {
      callback();
      return 'domain_must_be_selected';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value != null && value.isEmpty) {
      return 'pwd_cannot_be_empty'.tr;
    } else {
      return null;
    }
  }

  static String? validateId(String? value) {
    if (value != null && value.isEmpty) {
      return 'id_cannot_be_empty'.tr;
    } else {
      return null;
    }
  }
}
