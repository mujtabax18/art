import 'package:flutter/material.dart';

class PeriodDaysWidget extends StatelessWidget {
  const PeriodDaysWidget({
    Key? key,
    required this.mediaQuery,
    required this.days,
    required this.btnPress,
  }) : super(key: key);

  final Size mediaQuery;
  final String days;
  final VoidCallback btnPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: Color(0xffE1F0F4),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: mediaQuery.height/30,
            backgroundColor: Color(0xff282d34),
            child: Image.asset('images/sperm.png'),
          ),
          SizedBox(width: 10,),
          Text('Next period in $days days',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(width: 10,),
          GestureDetector(
            onTap: btnPress,
            child: Container(
              padding: EdgeInsets.symmetric(vertical:  mediaQuery.height/60, horizontal:  mediaQuery.height/30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21)
              ),
              child: SizedBox(
                  height: mediaQuery.height/30,
                  child: Image.asset('images/vector.png')),
            ),
          ),
        ],
      ),
    );
  }
}