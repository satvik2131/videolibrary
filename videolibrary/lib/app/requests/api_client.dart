import 'package:get/get.dart';

class ApiClient extends GetConnect {
  //List all videos
  Future<Response> getVideos() => get(
        'http://localhost:3000/listvideos',
      );
}
