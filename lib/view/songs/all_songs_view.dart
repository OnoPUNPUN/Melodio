import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melodio/common_widgets/all_songs_row.dart';
import 'package:melodio/view_model/all_songs_view_model.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {
  final allVM = Get.put(AllSongsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: allVM.allList.length,
          itemBuilder: (context, index) {
            var sObj = allVM.allList[index];
            return AllSongsRow(
              sObj: sObj,
              onPressedPlay: () {},
              onPressed: () {},
            );
          },
        ),
      ),
    );
  }
}
