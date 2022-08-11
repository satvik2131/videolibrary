import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SignInScreen(
            providerConfigs: [EmailProviderConfiguration()],
            actions: [
              AuthStateChangeAction((context, state) {
                Get.toNamed("/home");
              })
            ],
        )

    );
  }
}
