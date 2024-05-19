import 'package:flutter/material.dart';
import 'package:music_player_1/constants/constant_colors.dart';
import 'package:music_player_1/ui/pages/home_page/ui_components/home_page_discography_card_widget.dart';
import 'package:music_player_1/ui/pages/home_page/ui_components/home_page_header_card_widget.dart';
import 'package:music_player_1/ui/pages/home_page/ui_components/home_page_list_tile_widget.dart';
import 'package:music_player_1/ui/pages/home_page/ui_components/home_page_popular_song_widget.dart';
import 'package:music_player_1/ui/pages/now_playing_page/now_playing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    Set<String> list = {"Paint It", "Inside Out", "Animal"};
    Set<String> listPopular = {"Paint It", "Inside Out", "Animal"};
    Set<String> imageList = {
      "assets/bg_1.jpg",
      "assets/bg_2.jpg",
      "assets/thor.jpg"
    };
    Set<String> yearList = {"2021", "2018", "2024"};
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth >= 500 ? 500 : double.infinity,
          color: const Color(0xff161616),
          child: Column(
            children: [
              // Container(color: Colors.amber,width: double.infinity, height: 100,),
              // Header Card(text and button) section
              const HomePageHeaderCardWidget(),
              const SizedBox(
                height: 20,
              ),

              // Discography title(icon, title, view_all button ) Section
              HomePageListTileWidget(
                title: "Discography",
                viewAllButton: () {},
                icon: Icons.music_note_outlined,
              ),

              // Discography Card List Section
              Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      var imageURL = imageList.elementAt(index);
                      return HomePageDiscographyCardWidget(
                        image: imageURL,
                        title: list.elementAt(index),
                        year: yearList.elementAt(index),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NowPlayingPage(
                                        imageListURL: imageList,
                                        pos: index,
                                      )));
                        },
                      );
                    }),
              ),

              // Popular song title section
              // Container(),
              const SizedBox(
                height: 20,
              ),
              HomePageListTileWidget(
                title: "Popular singles",
                viewAllButton: () {},
                icon: Icons.star_border,
              ),

              // Popular song list section
              Container(),
              HomePagePopularSongWidget(
                imageURL: 'assets/bg_2.jpg',
                songTitle: "King Of Screens",
                onPressed: () {},
                subTitle: "2015 • Easy living",
              ),
              HomePagePopularSongWidget(
                imageURL: 'assets/bg_1.jpg',
                songTitle: "5 Seconds Befores",
                onPressed: () {},
                subTitle: "2015 • Easy living",
              ),
              HomePagePopularSongWidget(
                imageURL: 'assets/bg_1.jpg',
                songTitle: "5 Seconds Befores",
                onPressed: () {},
                subTitle: "2015 • Easy living",
              ),
              HomePagePopularSongWidget(
                imageURL: 'assets/bg_1.jpg',
                songTitle: "5 Seconds Befores",
                onPressed: () {},
                subTitle: "2015 • Easy living",
              ),
              HomePagePopularSongWidget(
                imageURL: 'assets/bg_1.jpg',
                songTitle: "5 Seconds Befores",
                onPressed: () {},
                subTitle: "2015 • Easy living",
              ),

              // Expanded(
              //   flex: 1,
              //   child: Column(9o
              //     children:
              //       listPopular.map((e) => HomePagePopularSongWidget()).toList()
              //
              //
              //   ),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            // context and builder are
            // required properties in this widget
            context: context,
            builder: (BuildContext context) {
              // we set up a container inside which
              // we create center column and display text

              // Returning SizedBox instead of a Container
              return SizedBox(
                child: Center(
                    child: NowPlayingPage(
                  imageListURL: imageList,
                  pos: 0,
                )),
              );
            },
          );
        },
        child: Ink(
          color: Colors.black12,
          height: 70,
          child: const BottomNav(),
        ),
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/bg_1.jpg',
                    fit: BoxFit.cover,
                  ))),
        ),
        const Text(
          "King Of Screens",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        // IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.skip_previous,
        //       color: Colors.black,
        //     )),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ),
        // IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.skip_next_sharp,
        //       color: Colors.black,
        //     )),
      ],
    );
  }
}
