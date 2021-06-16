import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      child: Icon(
        Icons.star,
        size: 15.0,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow.shade700,
      ),
    );
  }
}
