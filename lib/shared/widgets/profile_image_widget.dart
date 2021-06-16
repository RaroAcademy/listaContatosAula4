import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.profileImageUrl,
  }) : super(key: key);

  final String profileImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: NetworkImage(
            profileImageUrl,
          ),
        ),
      ),
    );
  }
}
