import 'package:flutter/material.dart';
import 'package:kzn/providers/vlog_provider.dart';
import 'package:kzn/videolink.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class Vlogs extends StatefulWidget {
  // final String title;

  @override
  _VlogsState createState() => _VlogsState();
}

class _VlogsState extends State<Vlogs> {
  String videoUrl = '';

  List<dynamic> listURL = [{"name":"Simple Runway Sketch Design","url":"https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Simple%20Runway%20Sketch%20Design.mp4"}];
  /*
  List<ClassName> listURL = [
    ClassName("Simple Runway Sketch Design",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Simple%20Runway%20Sketch%20Design.mp4"),
    ClassName("Leopard Fabric",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Leopard%20Fabric.MP4"),
    ClassName("Student Activity",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Student%20Activity.mp4"),
    ClassName("Ready to wear",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Ready%20to%20wear.mp4"),
    ClassName("Fashion Tools",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Fashion%20Tools.mp4"),
    ClassName("Notable Facts",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/-%20Notable%20Facts.mp4"),
    ClassName("Simple, Easy drawings ideas step by step for beginners",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Simple,%20Easy%20drawings%20ideas%20step%20by%20step%20for%20beginners.mp4"),
    ClassName("Zue - My Illustration Diary",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Zue%20-%20My%20Illustration%20Diary.mp4"),
    ClassName("6 Dreams Career for Fashion Learners VLog",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/%27%206%20Dreams%20Career%20for%20Fashion%20Learners%20VLog%20%27.mp4"),
    ClassName("Face and Hair Tutorial",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Face%20and%20Hair%20Tutorial.mp4"),
    ClassName("Hairs Drawing",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Hairs%20Drawing.mp4"),
    ClassName("How to Draw To Easy Body Figure Template",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/How%20to%20Draw%20To%20Easy%20Body%20Figure%20Template.mp4"),
    ClassName("Men 10 Heads Body Figure Step by Step",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/%E2%80%8DMen%2010%20Heads%20Body%20Figure%20Step%20by%20Step.mp4"),
    ClassName("Men Fashion Casual Outfits Number (2) with Coloring",
        ""),
    ClassName("Fashion Student Life in Thailand",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Fashion%20Student%20Life%20in%20Thailand.mp4"),
    ClassName("Black & Gold Dress",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Black%20&%20Gold%20Dress.mp4"),
    ClassName("Behind the Success Of Level - 2 Students",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Behind%20the%20Success%20Of%20Level%202%20Student.mp4"),
    ClassName("Basic Body Figure step by step for Beginners",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Basic%20Body%20Figure%20step%20by%20step%20for%20Beginners.mp4"),
    ClassName("Colors step by step video for Beginners",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Colors%20step%20by%20step%20video%20for%20Beginners%20.mp4"),
    ClassName("Basic Simple Myanmar Dress Sketch Step by Step ",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Basic%20Simple%20Myanmar%20Dress%20Sketch%20Step%20by%20Step%20.mp4"),
    ClassName("Basic Fashion Drawing Step by Step for Beginners",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Basic%20Fashion%20Drawing%20Step%20by%20Step%20for%20Beginners.mp4"),
    ClassName("How do you learn Online Class",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/%E2%80%8DHow%20do%20you%20learn%20Online%20Class-.mp4"),
    ClassName("Online Class Lesson - 13 Sample Video",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Online%20Class%20Lesson%20-%2013%20Sample%20Video.mp4"),
    ClassName("Online Class Teaching",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Online%20Class%20Teaching.mp4"),
    ClassName("Level - 2(Lesson - 1)",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Level-2%28Lesson-1%29.mp4"),
    ClassName("Online Class Lesson - 29 Sample Video",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/%E2%80%8DOnline%20Class%20Lesson%20-%2029%20Sample%20Video.mp4"),
    ClassName("Behind the efforts of the Level - 2",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Behind%20the%20efforts%20of%20the%20Level%20-%202.mp4"),
    ClassName("Level -2 Online Class",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Level%20-2%20Online%20Class.mp4"),
    ClassName("What did the Level-2 class teach?",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/What%20did%20the%20Level-2%20class%20teach.mp4"),
    ClassName("Dreams are Expensive",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Dreams%20are%20Expensive.mp4"),
    ClassName("Fashion Illustration with Copic Marker",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Fashion%20Illustration%20with%20Copic%20Marker.mp4"),
    ClassName("Easy Myanmar Dress Drawing Step By Step",
        "https://kzn.fra1.cdn.digitaloceanspaces.com/His_&_Her/Video/Easy%20Myanmar%20Dress%20Drawing%20Step%20by%20Step.mp4"),];

   */

  VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoUrl = listURL.first["url"];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                  height: 320,
                  child: Videolink(
                    url: videoUrl,
                  )),
              Expanded(child: _futureBuilder())
              /*
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  shrinkWrap: true,
                  // physics: ,
                  itemCount: listURL.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          setState(() {
                            videoUrl = listURL[index].url;
                          });
                        }, child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
                          child: Text(listURL[index].name),
                        ));
                  },
                ),
              ),

               */
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       _controller.value.isPlaying
        //           ? _controller.pause()
        //           : _controller.play();
        //     });
        //   },
        //   child: Icon(
        //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        //   ),
        // ),
      ),
    );
  }

  Widget _futureBuilder(){
    return FutureBuilder(
      future: Provider.of<VlogProvider>(context, listen: true).listURL,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.hasData){

          print(snapshot.data.first);
          listURL = snapshot.data;
          return ListView.builder(
            padding: EdgeInsets.only(top: 20),
            shrinkWrap: true,
            // physics: ,
            itemCount: listURL.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () {
                    setState(() {
                      videoUrl = listURL[index]["url"];
                    });
                  }, child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
                      child: Text(listURL[index]["name"]),
                    ),
                  ));
            },
          );
        }
        if(snapshot.hasError){
          return Text(snapshot.error.toString());
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



class ClassName {
  final String name;
  final String url;

  ClassName(this.name, this.url);
}
