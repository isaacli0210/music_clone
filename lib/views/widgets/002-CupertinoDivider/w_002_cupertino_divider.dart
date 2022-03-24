import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class W002CupertinoDivider extends StatelessWidget {
  const W002CupertinoDivider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0.3,
      thickness: 0.2,
      color: CupertinoColors.systemGrey
    );
  }
}