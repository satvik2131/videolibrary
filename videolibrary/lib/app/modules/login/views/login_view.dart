import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'package:get/get.dart';
import 'package:videolibrary/app/constants/auth.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providerConfigs: [EmailProviderConfiguration()],
      auth: AuthConst.auth,
      actions: [
        AuthStateChangeAction((context, state) {
          controller.goToHome();
        })
      ],
    );
  }
}
