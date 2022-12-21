import 'package:flutter/material.dart';
import 'package:art/widgets/custombottomnavbar.dart';
import 'package:art/widgets/cutomcardwidgets.dart';
import 'package:art/widgets/customappbar.dart';
import 'package:art/widgets/hellomessagewidget.dart';
import 'package:art/widgets/messagesound.dart';
import 'package:art/widgets/perioddaywidget.dart';
import 'package:art/widgets/playmusuic.dart';

class HomeScreen extends StatefulWidget {
  static String id='HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
       backgroundColor: Colors.white,
        body: ListView(
          padding:  EdgeInsets.only(
            top:mediaQuery.width/20 ,
            left: mediaQuery.width/15,
            right:mediaQuery.width/15,
          ),
          children: [
            CustomAppBar(mediaQuery: mediaQuery,
            leadingLogo: 'images/Logo.png',
            actionBtnLogo: 'images/A.png',
            onPess: (){},),
            SizedBox(height: mediaQuery.height/70,),
            HelloMessageWidget(
              name: 'Dana',),
            SizedBox(height: mediaQuery.height/25,),
            PeriodDaysWidget(mediaQuery: mediaQuery,
           days: '4',
             btnPress: (){},),
            Container(
              height: mediaQuery.height/2.8,
              child: Stack(
                children: [
                  Positioned(
                    top: mediaQuery.height/15,
                    child: CustomCardWidget(
                      text1: 'Cycle',
                        text2: 'Length',
                        text3: '28',
                        textColor: Colors.white,
                        mediaQuery: mediaQuery,
                        leftside: true,
                        color: Color(0xff363636),
                    onPress: (){},),
                  ),
                  Positioned(
                    top: mediaQuery.height/8,
                    left: mediaQuery.width/2.5,
                    child: CustomCardWidget(
                        text1: 'Period',
                        text2: 'Length',
                        text3: '06',
                        textColor: Color(0xff7A7F86),
                        mediaQuery: mediaQuery,
                        leftside: false,
                        color: Colors.white,
                        onPress: (){}),
                  ),
                ],
              ),
            ),
            MessageSound(
              msgPrimery: 'Sleep Sound',
              msgSecondary: 'track your all your latest data down below.',),
            SizedBox(height: mediaQuery.height/40,),
            Row(// Music Playlist Row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlayMusic(mediaQuery: mediaQuery,
                    bgimage: 'images/Rectangle1.png', playImge: 'images/Play.png',
                    btnPlayPress: (){}),
                PlayMusic(mediaQuery: mediaQuery,
                    bgimage: 'images/Rectangle2.png', playImge: 'images/Play.png',
                    btnPlayPress: (){}),
                PlayMusic(mediaQuery: mediaQuery,
                    bgimage: 'images/Rectangle3.png', playImge: 'images/Play.png',
                    btnPlayPress: (){}),
                PlayMusic(mediaQuery: mediaQuery,
                    bgimage: 'images/Rectangle4.png', playImge: 'images/Play.png',
                    btnPlayPress: (){}),
                PlayMusic(mediaQuery: mediaQuery,
                    bgimage: 'images/Rectangle5.png', playImge: 'images/Play.png',
                    btnPlayPress: (){}),
              ],
            ),// Music Playlist Row

          ],
        ),
        bottomNavigationBar: CustomBottomNavbar(mediaQuery: mediaQuery),
      ),
    );
  }
}












