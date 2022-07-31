import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videolibrary/app/authentication/authgate.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
      // .then((value) => AuthGate());

  runApp(LibraryApp());
}

class LibraryApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "libraryApp",
      // initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }

}
