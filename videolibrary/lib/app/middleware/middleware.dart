import '../service/authservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthGuardMiddleware extends GetMiddleware {
  var authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    return authService.isLoggedIn() ? null : RouteSettings(name: '/login');
  }
}