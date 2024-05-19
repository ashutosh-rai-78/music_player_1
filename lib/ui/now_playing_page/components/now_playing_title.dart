import 'package:flutter/material.dart';
import 'package:music_player_1/constants/constant_colors.dart';

class NowPlayingTitle extends StatelessWidget {
  final String titleText;
  final String subTitleText;

  const NowPlayingTitle(
      {super.key, required this.titleText, required this.subTitleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,),
        Text(
          subTitleText,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: swatch_6, fontSize: 20,),
        ),
      ],
    );
  }
}
