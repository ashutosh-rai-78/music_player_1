import 'package:flutter/material.dart';
import 'package:music_player_1/constants/constant_colors.dart';

class HomePageListTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function viewAllButton;

  const HomePageListTileWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.viewAllButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: const Text(
                  "View all",
                  style: TextStyle(color: swatch_3, fontSize: 14),
                ),
                onPressed: () {
                  viewAllButton;
                },
              ),
            ),
          ),

          // ListTile(
          //   leading:  Icon(
          //     icon,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     title,
          //     style: Theme.of(context).textTheme.titleLarge!.copyWith(
          //         color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          //   trailing: TextButton(
          //     child: const Text(
          //       "View all",
          //       style: TextStyle(color: swatch_3, fontSize: 14),
          //     ),
          //     onPressed: () {
          //       viewAllButton;
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
