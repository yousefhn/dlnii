import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:example/favorite.dart';
import 'package:example/location.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hsaab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//   Future<bool> exitDialog(){
//     return showDialog(context: context, builder: (context)=>);
//   }
  int _si = 1;
  List<Widget> _pages = [
    LocationPage(),
    SearchBarDemoHome(),
    FavoritePage(),
    Hs(),
  ];
  onPress(int index) {
    setState(() {
      _si = index;
    });
  }

  Widget _bNB() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff6885e3).withOpacity(0.5),
            Color(0xffffffff).withOpacity(0.5),
          ],
          stops: [0.3, 1],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: BottomNavyBar(
        showElevation: false,
        backgroundColor: Colors.transparent,
        //color: Color(0xff6885e3).withOpacity(0.6),
        //height: 50,
        animationDuration: Duration(milliseconds: 250),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'اماكن',
              style: TextStyle(fontFamily: "Cairo"),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'اماكن',
              style: TextStyle(fontFamily: "Cairo"),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'اماكن',
              style: TextStyle(fontFamily: "Cairo"),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'اماكن',
              style: TextStyle(fontFamily: "Cairo"),
            ),
          ),
        ],
        //  buttonBackgroundColor: Color(0xff6885e3),
        selectedIndex: _si,

        onItemSelected: onPress,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: _pages[_si],
          bottomNavigationBar: _bNB(),
        ),
        onWillPop: () {
          setState(() {
            if (_si != 1) {
              _si = 1;
            } else {
              SystemNavigator.pop();
            }
          });
          return Future.value(false);
        });
  }
}
