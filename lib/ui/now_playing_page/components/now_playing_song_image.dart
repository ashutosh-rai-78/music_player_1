import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class NowPlayingSongImage extends StatelessWidget {
  final Set<String> imageListURL;
  final int pos;

  const NowPlayingSongImage(
      {super.key, required this.imageListURL, required this.pos});

  @override
  Widget build(BuildContext context) {
    // Set<String> imageList = {
    //   "assets/bg_1.jpg",
    //   "assets/bg_2.jpg",
    //   "assets/thor.jpg"
    // };
    // var size = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 260,
      child: Swiper(
        scrollDirection: Axis.horizontal,
        axisDirection: AxisDirection.right,
        itemBuilder: (BuildContext context, int index) {
          index = pos;
          var imageURL = imageListURL.elementAt(index);
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageURL,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 3,
        viewportFraction: 0.6,
        scale: 0.7,
      ),
    );
    // return Padding(
    //     padding: const EdgeInsets.only(bottom: 0, left: 0, right: 0, top: 20),
    //     child: Row(
    //       children: [
    //         Transform.translate(
    //           offset: const Offset(-80, 00),
    //           child: SizedBox(
    //             width: size / 3,
    //             height: 200,
    //             child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(15),
    //                 child: Image.asset('assets/thor.jpg')),
    //           ),
    //         ),
    //         Transform.scale(
    //           scaleY: 1.1,
    //           scaleX: 1.8,
    //           child: SizedBox(
    //             width: size / 3,
    //             height: 240,
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(15),
    //               child: Image.asset(
    //                 'assets/thor.jpg',
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Transform.translate(
    //           offset: const Offset(80, 0),
    //           child: SizedBox(
    //             width: size / 3,
    //             height: 200,
    //             child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(15),
    //                 child: Image.asset('assets/thor.jpg')),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
  }
}
