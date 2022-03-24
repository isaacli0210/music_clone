import 'package:flutter/material.dart';

class VC003CancelSearchButton extends StatelessWidget {
  const VC003CancelSearchButton({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: GestureDetector(
        child: const Text('Cancel', style: TextStyle(color: Colors.red)),
        onTap: () => Navigator.pop(context),
      ),
    );
  }
}