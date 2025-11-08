import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.rootControler,
    required this.currentIndex,
  });

  final PageController rootControler;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                rootControler.animateToPage(
                  currentIndex - 1,
                  duration: const Duration(microseconds: 700),
                  curve: Curves.bounceInOut,
                );
              },
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () {
                rootControler.animateToPage(
                  currentIndex + 1,
                  duration: const Duration(microseconds: 700),
                  curve: Curves.bounceInOut,
                );
                
              },
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Next Page',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
