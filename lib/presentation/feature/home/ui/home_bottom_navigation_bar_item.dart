import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeBottomNavigationBarItem extends StatelessWidget {
  const HomeBottomNavigationBarItem(
      {super.key,
      required this.id,
      required this.isSelcted,
      required this.onSelcted});
  final int id;
  final bool isSelcted;
  final Function onSelcted;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onSelcted(),
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Icon(
              id==0?(isSelcted?EvaIcons.home:EvaIcons.homeOutline):(isSelcted?EvaIcons.heart:EvaIcons.heartOutline),
              color: Colors.white,
              size: 28,
            )
          ),
        ),
      ),
    );
  }
}
