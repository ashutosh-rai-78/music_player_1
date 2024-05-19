import 'package:flutter/material.dart';
import 'package:music_player_1/constants/constant_colors.dart';

class NowPlayingDuration extends StatelessWidget {
  final String startingDuration;
  final String endingDuration;
  const NowPlayingDuration({super.key, required this.startingDuration, required this.endingDuration});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: 0.5,
          backgroundColor: swatch_4,
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(startingDuration, style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: swatch_6
            )),Text(endingDuration, style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: swatch_6
            )),
          ],
        )
      ],
    );
  }
}
