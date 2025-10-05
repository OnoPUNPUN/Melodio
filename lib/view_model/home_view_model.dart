import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final txtSearch = TextEditingController().obs;

  final hostRecommendedArr = [
    {
      "image": "assets/img/img_1.png",
      "name": "World is Mine",
      "artists": "Hatsune Miku",
    },
    {
      "image": "assets/img/img_2.png",
      "name": "Senbonzakura",
      "artists": "Hatsune Miku",
    },
  ].obs;

  final playListArr = [
    {
      "image": "assets/img/img_3.png",
      "name": "Kawaii Collection",
      "artists": "Hatsune Miku",
    },
    {
      "image": "assets/img/img_4.png",
      "name": "Anime Vibes",
      "artists": "Kagamine Rin & Len",
    },
    {
      "image": "assets/img/img_5.png",
      "name": "Vocaloid Hits",
      "artists": "Various Artists",
    },
  ];

  final recentlyPlayedArr = [
    {"rate": 5, "name": "Melt", "artists": "Hatsune Miku"},
    {"rate": 5, "name": "Rolling Girl", "artists": "Hatsune Miku"},
    {"rate": 4, "name": "Tell Your World", "artists": "Hatsune Miku"},
    {"rate": 5, "name": "Love is War", "artists": "Hatsune Miku"},
  ].obs;
}
