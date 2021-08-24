import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white.withOpacity(1), //Colors.transparent,
        extendBody: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff6885e3).withOpacity(0.7),
                Color(0xffffffff).withOpacity(0.7)
              ],
              stops: [0.4, 0.9],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/19.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/19.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                titel_section,
                button_section,
                Container(
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(
                      "تسجيل الخروج",
                      style: TextStyle(fontFamily: "Cairo"),
                    ),
                    trailing: Icon(Icons.logout),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(
                      "تسجيل الخروج",
                      style: TextStyle(fontFamily: "Cairo"),
                    ),
                    trailing: Icon(Icons.logout),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(
                      "تسجيل الخروج",
                      style: TextStyle(fontFamily: "Cairo"),
                    ),
                    trailing: Icon(Icons.logout),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget titel_section = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'dvfvev',
                style: TextStyle(fontFamily: "Cairo"),
              ),
            ),
          ],
        ),
      ),
      FavoriteWidget(),
    ],
  ),
);

Widget button_section = Container(
  padding: EdgeInsets.only(top: 10, bottom: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.phone, 'CALL'),
      _buildButtonColumn(Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Icons.share, 'SHARE'),
      _buildButtonColumn(Icons.share, 'SHARE')
    ],
  ),
);

Widget _buildButtonColumn(IconData icon, String lable) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          lable,
          style: TextStyle(fontFamily: "Cairo"),
        ),
      )
    ],
  );
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? Icon(Icons.favorite_outlined)
                : Icon(Icons.favorite_outline)),
            color: Colors.white,
            onPressed: _toggleFavorite,
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
