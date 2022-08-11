import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_box/video.controller.dart';
import 'package:video_player/video_player.dart';
import 'package:videolibrary/app/requests/api_client.dart';
import 'package:videolibrary/app/service/firebasecloudservice.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  String? username = FirebaseAuth.instance.currentUser?.email.toString();

  // late VideoPlayerController videoPlayerController;

  List urls = [];
  List<VideoController> vcs = [];


  @override
  void onInit() async {
    super.onInit();
  }


  Future<List> getAllVcs() async {
    urls = await getUrls();

    for (var i = 0; i < urls.length; i++) {
      vcs.add(VideoController(
          source: VideoPlayerController.network(urls.elementAt(i),
          ))
        ..addInitializeErrorListenner((e) {
          print('yeh hai samasya----> ' + e.message);
        })
        ..initialize().then((e) {
          if (e != null) {
            print('Yeh loo--- ' + e.message);
          } else {
            print('Hogayaa success');
          }
        }));
    }

    return Future.value(vcs);

  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  void dispose() {
    for (var vc in vcs) {
      vc.dispose();
    }
    super.dispose();
  }




  void uploadVideo() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      String? path = await result.files.single.path;
      File file = File(path!);
      FirebaseCloudService().uploadVideoToCloudStorage(file);
    } else {
      // User canceled the picker
    }
  }

  Future<List> getUrls() async {
    //backend url
    var url = Uri.parse('https://saathealth-backend.herokuapp.com/listvideos');
    //List of urls
    var response = await http.get(url);
    final allUrls = await jsonDecode(response.body) as List;
    return allUrls;
  }

}
