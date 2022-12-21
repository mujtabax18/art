import 'package:flutter/material.dart';

class MessageSound extends StatelessWidget {
  const MessageSound({
    Key? key,
    required this.msgPrimery,
    required this.msgSecondary,
  }) : super(key: key);

  final String msgPrimery;
  final String msgSecondary;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(msgPrimery,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),),
          SizedBox(height: 5,),
          Text(msgSecondary,
            style: TextStyle(
              fontSize: 13.2,
              fontWeight: FontWeight.w600,
              color: Color(0xff9E9E9E),
            ),),
        ],
      ),
    );
  }
}