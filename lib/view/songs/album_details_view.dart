import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melodio/common/color_extension.dart';
import 'package:melodio/common_widgets/album_songs_row.dart';
import 'package:melodio/view_model/albums_view_model.dart';
import 'package:melodio/view_model/splash_view_model.dart';

class AlbumDetailView extends StatefulWidget {
  const AlbumDetailView({super.key});

  @override
  State<AlbumDetailView> createState() => _AlbumDetailViewState();
}

class _AlbumDetailViewState extends State<AlbumDetailView>
    with SingleTickerProviderStateMixin {
  final albumVM = Get.put(AlbumViewModel());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(
            "assets/img/back.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Album Details",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Image.asset(
                        "assets/img/alb_1.png",
                        width: double.maxFinite,
                        height: media.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: media.width * 0.5,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/img/alb_1.png",
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Future Tone",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(
                                        0.9,
                                      ),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "by Hatsune Miku",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(
                                        0.7,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "2002   .   18 Songs    .   64 min",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(
                                        0.7,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 105,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: TColor.primaryG,
                                    begin: Alignment.topCenter,
                                    end: Alignment.center,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/play_n.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                        color: TColor.primaryText.withOpacity(
                                          0.7,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 105,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/share.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                        color: TColor.primaryText.withOpacity(
                                          0.7,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 140,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/fav.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Add to Favourites",
                                      style: TextStyle(
                                        color: TColor.primaryText.withOpacity(
                                          0.7,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: albumVM.playedArr.length,
                itemBuilder: (context, index) {
                  var item = albumVM.playedArr[index];
                  return AlbumSongsRow(
                    sObj: item,
                    onPressedPlay: () {},
                    onPressed: () {},
                    isPlay: index == 0,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
