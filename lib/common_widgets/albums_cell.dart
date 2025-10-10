import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class AlbumsCell extends StatelessWidget {
  final Map aObj;
  final VoidCallback onPressed;
  final VoidCallback onPressedMenu;

  const AlbumsCell({
    super.key,
    required this.aObj,
    required this.onPressed,
    required this.onPressedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              aObj["image"],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  aObj["name"],
                  maxLines: 1,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              InkWell(
                onTap: onPressedMenu,
                child: Image.asset(
                  "assets/img/more_btn.png",
                  width: 12,
                  height: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  aObj["artists"],
                  maxLines: 1,
                  style: TextStyle(color: TColor.lightGray, fontSize: 11),
                ),
              ),
              Text(
                " - ",
                maxLines: 1,
                style: TextStyle(color: TColor.lightGray, fontSize: 11),
              ),
              Text(
                aObj["songs"],
                maxLines: 1,
                style: TextStyle(color: TColor.lightGray, fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}