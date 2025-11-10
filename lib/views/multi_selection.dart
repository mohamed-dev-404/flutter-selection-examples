import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiSelection extends StatefulWidget {
  const MultiSelection({super.key});
  @override
  State<MultiSelection> createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  final List<String> xInterests = [
    'News',
    'Education & Learning',
    'Sports',
    'Music',
    'Movies',
    'Finance',
    'Gaming',
    'Art',
    'Photography',
    'Science',
    'Travel',
    'Food',
    'Fashion',
    'Fitness',
  ];
  final List<String> selectedXInterests = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Multi Selection Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What do you want to see on X ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: List.generate(
                  xInterests.length,
                  (index) {
                    final String interest = xInterests[index];
                    final bool isSelected = selectedXInterests.contains(
                      interest,
                    );
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (!isSelected) {
                            selectedXInterests.add(interest);
                          } else {
                            selectedXInterests.remove(interest);
                          }
                        });
                      },
                      child: Stack(
                        children: [
                          IntrinsicWidth(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              padding: const EdgeInsets.only(
                                left: 12,
                                right: 50,
                                bottom: 10,
                              ),
                              height: 85,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: isSelected
                                    ? Colors.blue
                                    : Colors.grey[900],
                              ),
                              child: Text(
                                xInterests[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          isSelected
                              ? const Positioned(
                                  top: 10,
                                  right: 12,
                                  child: Icon(
                                    CupertinoIcons.check_mark_circled_solid,
                                    color: Colors.white,
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
