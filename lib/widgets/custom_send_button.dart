import 'package:flutter/material.dart';

class CustomSendButton extends StatelessWidget {
  const CustomSendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.pink,
            Colors.pinkAccent,
            Color.fromARGB(255, 218, 102, 141),
          ],
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(6),
      child: const Text(
        'Send',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
