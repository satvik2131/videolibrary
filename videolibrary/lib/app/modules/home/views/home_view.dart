import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_box/video_box.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:RefreshIndicator(
          displacement: 250,
          backgroundColor: Colors.yellow,
          color: Colors.red,
          strokeWidth: 3,
          triggerMode: RefreshIndicatorTriggerMode.onEdge,
          onRefresh: () async {
          },
          child:  Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: controller.uploadVideo,
                child: Icon(Icons.upload_file),
              ),
              floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,


              body: FutureBuilder(builder: (ctx,snapshot) {

                if (snapshot.connectionState == ConnectionState.done) {
                  // If we got an error
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occurred',
                        style: TextStyle(fontSize: 18),
                      ),
                    );

                    // if we got our data
                  } else if (snapshot.hasData) {
                    var vcList = snapshot.data as List;

                    // Extracting data from snapshot object
                    return ListView.builder(
                        itemCount: controller.urls.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: VideoBox(
                                  controller: vcList.elementAt(index)),
                            ),
                          );
                        });
                  }
                }
                return Container();

              },
                future: controller.getAllVcs(),
              )

          )
        )
    );
  }
}
