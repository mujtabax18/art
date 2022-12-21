import 'package:flutter/material.dart';
class PlayMusic extends StatelessWidget {
  const PlayMusic({
    Key? key,
    required this.mediaQuery,
    required this.bgimage,
    required this.btnPlayPress,
    required this.playImge,
  }) : super(key: key);
  final String bgimage;
  final String playImge;
  final VoidCallback btnPlayPress;
  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: mediaQuery.height/24, horizontal: mediaQuery.width/16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(bgimage),
          fit: BoxFit.fill,
        ),
      ),
      child: GestureDetector(
        onTap: btnPlayPress,
        child: SizedBox(
          height: mediaQuery.height/55,
          child: Image.asset(playImge,fit: BoxFit.fill),
        ),
      ),
    );
  }
}