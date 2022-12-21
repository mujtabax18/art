import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.leadingLogo,
    required this.actionBtnLogo,
    required this.mediaQuery,
    required this.onPess,
  }) : super(key: key);

  final String leadingLogo;
  final String actionBtnLogo;
  final VoidCallback onPess;
  final Size mediaQuery;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: mediaQuery.height/15,
          child: Image.asset(leadingLogo),
        ),
        GestureDetector(
          onTap: onPess,
          child: CircleAvatar(
            backgroundColor: Color(0xffF2F2F2),
            radius: mediaQuery.height/35,
            child: Image.asset(actionBtnLogo),
          ),
        )
      ],
    );
  }
}