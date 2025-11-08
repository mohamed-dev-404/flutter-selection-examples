import 'package:flutter/material.dart';
import 'package:selections_examples/views/image_selection.dart';
import 'package:selections_examples/views/multi_selection.dart';
import 'package:selections_examples/views/single_selection.dart';
import 'package:selections_examples/views/toggle_selection.dart';
import 'package:selections_examples/widgets/custom_nav_bar.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});
  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  final PageController rootControler = PageController();
  int currentIndex = 0;
  final List<Widget> views = [
    const SingleSelection(),
    const ImageSelection(),
    const ToggleSelection(),
    const MultiSelection(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: rootControler,
          children: views,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        bottomNavigationBar: CustomNavbar(
          rootControler: rootControler,
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
