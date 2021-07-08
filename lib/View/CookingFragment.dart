import 'package:final_project_dicoding/View/MainView.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CookingFragment extends StatefulWidget {
  final Recipe? recipe;
  CookingFragment({Key? key, this.recipe}) : super(key: key);

  @override
  _CookingFragmentState createState() =>
      _CookingFragmentState(recipe: this.recipe);
}

class _CookingFragmentState extends State<CookingFragment> {
  final Recipe? recipe;
  _CookingFragmentState({required this.recipe});
  YoutubePlayerController? _controller;
  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
      initialVideoId: recipe?.video ?? '',
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller!.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  Future<bool> willPopBack() async {
    streamController.add(3);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPopBack,
      child: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller!,
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    player,
                  ],
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Watch the video',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            Text(
              'as a guide when you cook',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(237, 119, 38, 1)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Just stop and backward for a while if\nyou get confused',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                )),
            SizedBox(
              height: 16,
            ),
            Text(
              'Play it in fullscreen for more comfort',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(68, 193, 141, 1),
                )),
            SizedBox(
              height: 16,
            ),
            Text(
              'Be carefull about your device',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
