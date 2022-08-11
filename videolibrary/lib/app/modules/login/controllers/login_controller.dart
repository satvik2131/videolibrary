import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../service/authservice.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  @override
  void onInit() {
    super.onInit();
    checkAuth();



  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  void checkAuth(){
    var authService = Get.find<AuthService>();
    authService.isLoggedIn() ? Get.toNamed('/home'): null;
  }


}
