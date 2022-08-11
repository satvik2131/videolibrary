import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'app/routes/app_pages.dart';
import 'app/service/authservice.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(AuthService());

  runApp(LibraryApp());
}

class LibraryApp extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "libraryApp",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

    );
  }
}
