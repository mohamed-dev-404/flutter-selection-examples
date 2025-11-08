import 'package:flutter/material.dart';
import 'package:selections_examples/root.dart';
import 'package:selections_examples/utils/theme.dart';

void main() {
  runApp(const SelectionExamplesApp());
}

class SelectionExamplesApp extends StatelessWidget {
  const SelectionExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: RootView(),
    );
  }
}
