import 'package:flutter/material.dart';

class HomePagePopularSongWidget extends StatelessWidget {
  final String songTitle;
  final String imageURL;
  final Function onPressed;
  final String subTitle;

  const HomePagePopularSongWidget(
      {super.key,
      required this.songTitle,
      required this.imageURL,
      required this.onPressed,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {  },
      child: Container(
        padding: EdgeInsets.only(bottom: 10,right: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    imageURL,
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        subTitle,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
