import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melodio/common_widgets/my_playlist_cell.dart';
import 'package:melodio/common_widgets/view_all_section.dart';
import 'package:melodio/view_model/play_list_view_model.dart';

class PlayListView extends StatefulWidget {
  const PlayListView({super.key});

  @override
  State<PlayListView> createState() => _PlayListViewState();
}

class _PlayListViewState extends State<PlayListView> {
  final plVM = Get.put(PlaylistsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => GridView.builder(
                itemCount: plVM.paylistArr.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  var pOj = plVM.paylistArr[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),

            ViewAllSection(title: "My Playlist", onPressed: () {}),
            SizedBox(
              height: 150,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: plVM.myPlaylistArr.length,
                  itemBuilder: (context, index) {
                    var pObj = plVM.myPlaylistArr[index];
                    return MyPlaylistCell(pObj: pObj, onPressed: () {});
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
