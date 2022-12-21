import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _selectedItem=3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: widget.mediaQuery.height/13,
      decoration: BoxDecoration(
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomNavbarItem(
            mediaQuery: widget.mediaQuery,
              iconImage:_selectedItem==1?'images/person.png':'images/person.png',
              iconBgColor:_selectedItem==1? Color(0xff12121F) :Colors.transparent,
              onPress: (){
              setState(() {
                _selectedItem=1;
              });

            },
          ),
          CustomNavbarItem(
            mediaQuery: widget.mediaQuery,
            iconImage:_selectedItem==2?'images/Ticket.png':'images/Ticket.png',
            iconBgColor:_selectedItem==2? Color(0xff12121F) :Colors.transparent,
            onPress: (){
              setState(() {
                _selectedItem=2;
              });

            },
          ),
          CustomNavbarItem(
            mediaQuery: widget.mediaQuery,
            iconImage:_selectedItem==3?'images/Home.png':'images/Home.png',
            iconBgColor:_selectedItem==3? Color(0xff12121F) :Colors.transparent,
            onPress: (){
              setState(() {
                _selectedItem=3;
              });

            },
          ),
          CustomNavbarItem(
            mediaQuery: widget.mediaQuery,
            iconImage:_selectedItem==4?'images/Paper.png':'images/Paper.png',
            iconBgColor:_selectedItem==4? Color(0xff12121F) :Colors.transparent,
            onPress: (){
              setState(() {
                _selectedItem=4;
              });

            },
          ),
          CustomNavbarItem(
            mediaQuery: widget.mediaQuery,
            iconImage:_selectedItem==5?'images/Bookmark.png':'images/Bookmark.png',
            iconBgColor:_selectedItem==5? Color(0xff12121F) :Colors.transparent,
            onPress: (){
              setState(() {
                _selectedItem=5;
              });

            },
          ),
        ],
      ),
    );
  }
}

class CustomNavbarItem extends StatelessWidget {
  const CustomNavbarItem({
    Key? key,
    required this.mediaQuery,
    required this.iconImage,
    required this.iconBgColor,
    required this.onPress,
  }) : super(key: key);
  final String iconImage;
  final Size mediaQuery;
  final Color iconBgColor;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: mediaQuery.height/17,
        width: mediaQuery.width/7.41,
       
        decoration: BoxDecoration(
            color: iconBgColor,
            borderRadius: BorderRadius.circular(19)),
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical:  mediaQuery.height/70,
              horizontal: mediaQuery.width/44),
          child: Image.asset(iconImage),
        ),
      ),
    );
  }
}