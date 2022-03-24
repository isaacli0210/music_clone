import 'package:flutter/cupertino.dart';

class VC002ScheduleButton extends StatelessWidget {
  const VC002ScheduleButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 29, 29, 29),
          shape: BoxShape.circle
        ),
        child: const Center(
          child: Icon(
            CupertinoIcons.calendar,
            size: 20.0,
          ),
        ),
      ),
      onTap: () => {},
    );
  }
}