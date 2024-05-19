import 'package:flutter/material.dart';
import 'package:music_player_1/constants/constant_colors.dart';

class HomePageHeaderCardWidget extends StatelessWidget {
  const HomePageHeaderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.of(context).size.height;
    return Stack(alignment: Alignment.bottomLeft, children: [
      Container(
        width: double.infinity,
        height: heightSize / 3,
        child: Image.asset(
          'assets/bg_card_image.jpg',
          fit: BoxFit.cover,
        ),
        // child: Container(color: Colors.amber,width: double.infinity, height: 100,),
      ),
      Container(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("F.L.A.M.E.",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36)),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(swatch_4_light),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
