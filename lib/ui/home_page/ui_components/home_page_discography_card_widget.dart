import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_player_1/constants/constant_colors.dart';

class HomePageDiscographyCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String year;
  final Function onPressed;

  const HomePageDiscographyCardWidget({super.key, required this.image, required this.title, required this.year, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: InkWell(
        onTap: (){
          onPressed();
        },
        child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 132,
                      height: 142,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(title,
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                          color: Colors.white,
                          fontSize: 18
                      )),
                  Text(year,
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                        color: swatch_3,)),
                ],
              ),
            ),
      )

    );
  }
}
