import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tab_bar_4_1/screens/views/audio_page.dart';
import 'package:tab_bar_4_1/screens/views/video_page.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Audio and Video Player",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.audiotrack_outlined),
            ),
            Tab(
              icon: Icon(Icons.music_video_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children:  const [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 200,
                    foregroundImage: NetworkImage(
                        "https://c4.wallpaperflare.com/wallpaper/807/970/560/psychedelic-abstract-colorful-wolf-headphones-hd-wallpaper-preview.jpg"),
                  ),
                ),
              ),
              CircularProgressIndicator(),
              Spacer(),
            ],
          ),
          audio_page(),
          video_page(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              tabController.index--;
            },
            child: const Icon(CupertinoIcons.back),
          ),
          FloatingActionButton(
            onPressed: () {
              tabController.index++;
            },
            child: const Icon(CupertinoIcons.forward),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
