import 'package:get/get.dart';

class PlaylistsViewModel extends GetxController {
  final paylistArr = [
    {
      "image": "assets/img/playlist_1.png",
      "name": "My Top Tracks",
      "songs": "9 Songs",
    },
    {
      "image": "assets/img/playlist_2.png",
      "name": "Lastest Added",
      "songs": "113 Songs",
    },
    {
      "image": "assets/img/playlist_3.png",
      "name": "History",
      "songs": "56 Songs",
    },
    {
      "image": "assets/img/playlist_4.png",
      "name": "Favourites",
      "songs": "90 Songs",
    },
  ].obs;

  final myPlaylistArr = [
    {"image": "assets/img/img_3.png", "name": "Kawaii Collection"},
    {"image": "assets/img/img_4.png", "name": "Anime Vibes"},
    {"image": "assets/img/img_5.png", "name": "Vocaloid Hits"},
  ].obs;
}
