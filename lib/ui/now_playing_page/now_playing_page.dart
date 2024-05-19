import 'package:flutter/material.dart';
import 'package:music_player_1/ui/pages/now_playing_page/components/now_playing_controller.dart';
import 'package:music_player_1/ui/pages/now_playing_page/components/now_playing_duration.dart';
import 'package:music_player_1/ui/pages/now_playing_page/components/now_playing_song_image.dart';
import 'package:music_player_1/ui/pages/now_playing_page/components/now_playing_title.dart';

class NowPlayingPage extends StatelessWidget {

  final Set<String> imageListURL;
  final int pos;

  const NowPlayingPage({super.key, required this.imageListURL, required this.pos});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [

            // favorite section
            const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
             NowPlayingSongImage(imageListURL: imageListURL, pos: pos,),
            const SizedBox(
              height: 50,
            ),
            // Song Image section
            const NowPlayingTitle(
                titleText: "Eternal Chains", subTitleText: "Animal"),

            // Song title section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Song Duration (Linear Progress Bar)section
                  const SizedBox(
                    height: 50,
                  ),
                  const NowPlayingDuration(
                      startingDuration: '2:53', endingDuration: '4:47'),

                  // Control(play, pause, next, previous, shuffle) of song
                  const SizedBox(
                    height: 40,
                  ),
                   NowPlayingController(isPlaying: true, onPressedNext: (){}, onPressedPausePlay: (){}, onPressedPrevious: (){}, onPressedRepeat: (){},
                      onPressedShuffle: (){},),


                  // Lyrics Section

                  Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
