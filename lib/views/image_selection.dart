import 'package:flutter/material.dart';

class ImageSelection extends StatefulWidget {
  const ImageSelection({super.key});

  @override
  State<ImageSelection> createState() => _ImageSelectionState();
}

class _ImageSelectionState extends State<ImageSelection> {
  final List<String> productImages = [
    'assets/images/laptop/labtop1.png',
    'assets/images/laptop/labtop4.png',
    'assets/images/laptop/labtop2.png',
    'assets/images/laptop/labtop3.png',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdee00),
      appBar: AppBar(
        title: const Text('Image Selection Example'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          //*displayed image
          SizedBox(
            height: 270,
            width: double.infinity,
            child: Image.asset(
              productImages[selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //* other images
          SizedBox(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: productImages.length,
              itemBuilder: (context, index) {
                final bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    margin: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 8,
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 2,
                        color: isSelected
                            ? Colors.blueAccent
                            : Colors.grey.shade200,
                      ),
                    ),
                    width: 105,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      productImages[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
