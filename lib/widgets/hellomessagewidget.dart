import 'package:flutter/material.dart';
class HelloMessageWidget extends StatelessWidget {
  const HelloMessageWidget({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, $name! 👋 ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),
            Text('track your all your latest data down below.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
          ]),
    );
  }
}