import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:videolibrary/app/constants/auth.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = AuthConst.auth;
  Rxn<User> _firebaseUser = Rxn<User>();


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });

  }

  void goToHome(){

    Get.toNamed("home");
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
