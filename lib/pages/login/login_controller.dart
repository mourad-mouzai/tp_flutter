import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString name = ''.obs;

  @override
  void onInit() {
    super.onInit();
    name.value = 'Login';
  }

  // @override
  // void onReady() {
  //   super.onReady();
  //   name.value = 'Login 2';
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  //   name.value = '';
  // }

  String? validate(String value) {
    if (value.isEmpty) {
      debugPrint('Please enter some text');
      return name.value;
    }
    return null;
  }

  // final _username = ''.obs;
  // final _password = ''.obs;

  // String get username => _username.value;
  // String get password => _password.value;

  // void setUsername(String value) => _username.value = value;
  // void setPassword(String value) => _password.value = value;
}
