import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class FirebaseCloudService extends GetxService {
  final storageRef = FirebaseStorage.instance.ref();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late String uid;

  void uploadVideoToCloudStorage(File file) async {
    uid = await FirebaseAuth.instance.currentUser!.uid + DateTime.now().toString();
    var uploadFileRef = storageRef.child(uid);
    await uploadFileRef.putFile(file);
    saveTheUrlToDB(await uploadFileRef.getDownloadURL());
  }

  void saveTheUrlToDB(url) {
    FirebaseFirestore.instance
        .collection("videos")
        .doc("${uid}")
        .set({'url': url});
  }



}
