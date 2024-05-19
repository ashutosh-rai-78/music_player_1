import 'package:flutter/material.dart';

class NowPlayingController extends StatelessWidget {
  final Function onPressedShuffle;
  final Function onPressedPrevious;
  final Function onPressedPausePlay;
  final Function onPressedNext;
  final Function onPressedRepeat;
  final bool isPlaying;

  const NowPlayingController(
      {super.key,
      required this.onPressedShuffle,
      required this.onPressedPrevious,
      required this.onPressedPausePlay,
      required this.onPressedNext,
      required this.onPressedRepeat, required this.isPlaying});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon:const Icon(Icons.shuffle, size: 30,),
          color: Colors.white, onPressed: () {
            onPressedShuffle;
        },

        ),
        IconButton(
          icon: const Icon(Icons.skip_previous,size: 35,),
          color: Colors.white, onPressed: () { onPressedPrevious; },

        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white),
            child: IconButton(
              padding: const EdgeInsets.all(20),
              icon: isPlaying ? const Icon(Icons.pause, size: 50,) : const Icon(Icons.play_arrow, size: 50,),
              color: Colors.black, onPressed: () { onPressedPausePlay; },
            )),
        IconButton(
          icon: const Icon(Icons.skip_next, size: 35,),
          onPressed: (){ onPressedNext;},
          color: Colors.white,
        ),
        IconButton(
          icon: const Icon(Icons.replay,size: 30,),

          onPressed: (){onPressedRepeat;},
          color: Colors.white,
        ),
      ],
    );
  }
}
