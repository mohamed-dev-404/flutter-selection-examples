import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selections_examples/widgets/custom_circle_profile_image.dart';

// ignore: must_be_immutable
class ToggleSelection extends StatefulWidget {
  const ToggleSelection({super.key});
  @override
  State<ToggleSelection> createState() => _ToggleSelectionState();
}

class _ToggleSelectionState extends State<ToggleSelection> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Toggle Selection Example'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            //* profile image
            Stack(
              clipBehavior: Clip.none,
              children: [
                const CustomCircleProfileImage(),
                Positioned(
                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFollowing = !isFollowing;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 25,
                      child: Icon(
                        isFollowing
                            ? CupertinoIcons.check_mark
                            : CupertinoIcons.add,
                        color: Colors.white,
                        size: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            //* profile name
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isFollowing
                        ? CupertinoIcons.check_mark
                        : CupertinoIcons.add,
                    color: Colors.black,
                    size: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Mohamed Ibrahim',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
