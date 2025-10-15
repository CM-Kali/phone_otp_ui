import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../models/user_model.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;

  Future<void> login() async {
    isLoading.value = true;
    errorMessage.value = '';
    await Future.delayed(const Duration(seconds: 2));

    if (email.value == 'admin@gmail.com' && password.value == '123456') {
      isLoading.value = false;
      Get.snackbar(
        "Welcome!",
        "Login Successful 🎉",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color(0xFF00BCD4),
        colorText: const Color(0xFFFFFFFF),
        borderRadius: 12,
        margin: const EdgeInsets.all(15),
      );
    } else {
      isLoading.value = false;
      errorMessage.value = "Invalid email or password ❌";
    }
  }
}
