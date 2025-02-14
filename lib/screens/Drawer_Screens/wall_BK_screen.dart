import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/constants/constants.dart';
import 'package:burger_king_/screens/app_bar_screen.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

class BKWallScreen extends StatefulWidget {
  const BKWallScreen({super.key});

  @override
  State<BKWallScreen> createState() => _BKWallScreenState();
}

class _BKWallScreenState extends State<BKWallScreen> {
  final MainVideoURL = "https://youtu.be/BF6KVRnZ8c8?feature=shared";
  late FlickManager _flickManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset("assets/video.mp4"));
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _flickManager.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Brown,
        title: AppB(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: BackGround,
          child: Center(
            child: Column(
              children: [
                Image1(),
                SizedBox(
                  height: 10,
                ),
                Video1(),
                SizedBox(
                  height: 30,
                ),
                Text1(),
                SizedBox(
                  height: 20,
                ),
                Image2(),
                SizedBox(
                  height: 20,
                ),
                Text3(),
                SizedBox(
                  height: 12,
                ),
                Text4(),
                SizedBox(
                  height: 50,
                ),
                ImageSlider1(),
                SizedBox(
                  height: 20,
                ),
                Image3(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget AppB() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AppBarScreen(),
                      type: PageTransitionType.leftToRight));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: SwitchColor,
            )),
        SizedBox(
          width: 15,
        ),
        Text(
          "BK Wall",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget Image1() {
    return Image.asset(
      "assets/burger.png",
      height: 140,
      width: 100,
    );
  }

  Widget Video1() {
    return Container(
       padding: EdgeInsets.all(6),
        height: 203,
        width: 370,
        decoration:
            BoxDecoration(border: Border.all(color: BackGround, width: 1)),
        child: Center(
         
          child: FlickVideoPlayer(flickManager: _flickManager,
          
          )));
  }

  Widget Text1() {
    return Container(
      padding: EdgeInsets.only(right: 160),
      child: Text("ABOUT Burger King",
          style: TextStyle(color: Brown, fontSize: 24, fontFamily: "Nova")),
    );
  }

  Widget Image2() {
    return Image.asset(
      "assets/Wall/A.png",
      scale: 2.25,
    );
  }

  Widget Text3() {
    return Container(
      padding: EdgeInsets.only(right: 140),
      child: Text("Great Food Comes First",
          style: TextStyle(color: Brown, fontSize: 23, fontFamily: "Nova")),
    );
  }

  Widget Text4() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Text(WallText,
          style: TextStyle(
              color: Colors.brown.shade700, fontSize: 15, fontFamily: "Nova")),
    );
  }

  Widget ImageSlider1() {
    return Container(
      width: double.infinity,
      height: 350,
      color: Brown,
      child: PageView(
        children: [
          Container(
            child: Image.asset(
              "assets/Wall/1.png",
              scale: 0.95,
            ),
          ),
          Container(
            child: Image.asset(
              "assets/Wall/2.png",
              scale: 0.95,
            ),
          ),
          Container(
            child: Image.asset(
              "assets/Wall/3.png",
              scale: 0.95,
            ),
          )
        ],
      ),
    );
  }

  Widget Image3() {
    return Image.asset(
      "assets/Wall/last.png",
      scale: 3.5,
    );
  }
}
