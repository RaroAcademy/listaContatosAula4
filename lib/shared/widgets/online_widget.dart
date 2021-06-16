import 'package:flutter/material.dart';

class OnlineWidget extends StatelessWidget {
  const OnlineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green.shade300,
          ),
        ),
      ),
    );
  }
}
