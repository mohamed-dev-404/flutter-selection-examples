import 'package:flutter/material.dart';

class CustomCircleProfileImage extends StatelessWidget {
  const CustomCircleProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 130,
      backgroundColor: Colors.white,
      child: ClipOval(
        child: Image.asset(
          'assets/images/me.jpg',
          fit: BoxFit.contain,
          width: 260,
          height: 260,
        ),
      ),
    );
  }
}
