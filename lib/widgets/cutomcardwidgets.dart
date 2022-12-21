import 'package:flutter/material.dart';
class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
  required this.mediaQuery,
    required this.leftside,
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.textColor,
    required this.onPress,
  }) : super(key: key);
final Size mediaQuery;
final bool leftside;
final Color color;
  final String text1;
  final String text2;
  final String text3;
  final Color textColor;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: Container(
        width: mediaQuery.width/3,
        height: mediaQuery.height/5,
        child: CustomPaint(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: mediaQuery.height/16,),
              Text('     $text1',
                  style:TextStyle(
                    fontSize: 15.55,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ) ),
              Text('     $text2',
                  style:TextStyle(
                    fontSize: 15.55,
                    color: textColor,
                    fontWeight: FontWeight.w300,
                  )),
              Text('   $text3',
                  style:TextStyle(
                fontSize: 40,
                color:textColor,
                fontWeight: FontWeight.w600,
              )),
            ],
          ),
          painter: CustomContainerShapeBorder(
            width: mediaQuery.width/3,
            height: mediaQuery.height/5,
            fillColor: color,
            left: leftside
          ),
        ),
      ),
    );
  }
}


class CustomContainerShapeBorder extends CustomPainter {
  final double height;
  final double width;
  final Color fillColor;
  final bool left;
  CustomContainerShapeBorder({
    this.height: 400.0,
    this.width: 300.0,
    this.fillColor: Colors.white,
    this.left:true,
  });
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
    Path path = Path();
    paint.color = fillColor;
    path = Path();
      if(left) {
        path.lineTo(size.width * 0.12, size.height / 5);
        path.cubicTo(size.width * 0.12, size.height * 0.13, size.width * 0.19, size.height * 0.08, size.width * 0.26, size.height * 0.09);
        path.cubicTo(size.width * 0.26, size.height * 0.09, size.width * 1.02, size.height / 5, size.width * 1.02, size.height / 5);
        path.cubicTo(size.width * 1.08, size.height / 5, size.width * 1.12, size.height * 0.26, size.width * 1.12, size.height * 0.31);
        path.cubicTo(size.width * 1.12, size.height * 0.31, size.width * 1.12, size.height * 0.98, size.width * 1.12, size.height * 0.98);
        path.cubicTo(size.width * 1.12, size.height * 1.04, size.width * 1.07, size.height * 1.09, size.width, size.height * 1.09);
        path.cubicTo(size.width, size.height * 1.09, size.width * 0.24, size.height * 1.09, size.width * 0.24, size.height * 1.09);
        path.cubicTo(size.width * 0.17, size.height * 1.09, size.width * 0.12, size.height * 1.04, size.width * 0.12, size.height * 0.98);
        path.cubicTo(size.width * 0.12, size.height * 0.98, size.width * 0.12, size.height / 5, size.width * 0.12, size.height / 5);
        path.cubicTo(size.width * 0.12, size.height / 5, size.width * 0.12, size.height / 5, size.width * 0.12, size.height / 5);
        path.moveTo(size.width * 0.12, size.height / 5);
      }
    else {
    path.lineTo(size.width * 1.12, size.height * 0.19);
    path.cubicTo(size.width * 1.12, size.height * 0.13, size.width * 1.05, size.height * 0.08, size.width * 0.98, size.height * 0.09);
    path.cubicTo(size.width * 0.98, size.height * 0.09, size.width * 0.22, size.height / 5, size.width * 0.22, size.height / 5);
    path.cubicTo(size.width * 0.16, size.height / 5, size.width * 0.12, size.height / 4, size.width * 0.12, size.height * 0.31);
    path.cubicTo(size.width * 0.12, size.height * 0.31, size.width * 0.12, size.height * 0.97, size.width * 0.12, size.height * 0.97);
    path.cubicTo(size.width * 0.12, size.height * 1.03, size.width * 0.17, size.height * 1.08, size.width * 0.24, size.height * 1.08);
    path.cubicTo(size.width * 0.24, size.height * 1.08, size.width, size.height * 1.08, size.width, size.height * 1.08);
    path.cubicTo(size.width * 1.07, size.height * 1.08, size.width * 1.12, size.height * 1.03, size.width * 1.12, size.height * 0.97);
    path.cubicTo(size.width * 1.12, size.height * 0.97, size.width * 1.12, size.height * 0.19, size.width * 1.12, size.height * 0.19);
    path.cubicTo(size.width * 1.12, size.height * 0.19, size.width * 1.12, size.height * 0.19, size.width * 1.12, size.height * 0.19);
    path.moveTo(size.width * 1.12, size.height * 0.19);
    }
    path.close();
    canvas.drawShadow(path, fillColor, 10.0, false);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}