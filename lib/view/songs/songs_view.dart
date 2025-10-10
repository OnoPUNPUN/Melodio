import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melodio/common/color_extension.dart';
import 'package:melodio/view/songs/albums_view.dart';
import 'package:melodio/view/songs/all_songs_view.dart';
import 'package:melodio/view/songs/play_list_view.dart';
import 'package:melodio/view_model/splash_view_model.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController?.addListener(() {
      currentIndex = _tabController?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          },
          icon: Image.asset(
            "assets/img/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Songs",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.find<SplashViewModel>().openDrawer();
            },
            icon: Image.asset(
              "assets/img/search.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.primaryText35,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight - 15,
            child: TabBar(
              indicatorColor: TColor.focus,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              isScrollable: true,
              labelStyle: TextStyle(
                color: TColor.focus,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                color: TColor.primaryText80,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              controller: _tabController,
              tabs: const [
                Tab(text: "All Songs"),
                Tab(text: "Playlist"),
                Tab(text: "Albums"),
                Tab(text: "Artist"),
                Tab(text: "Genres"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const AllSongsView(),
                const PlayListView(),
                const AlbumsView(),
                Center(child: Text("Artist")),
                Center(child: Text("Genres")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
