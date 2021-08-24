import 'package:example/myAcount.dart';
import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'notification.dart';
import 'one/login.dart';

class Hs extends StatefulWidget {
  const Hs({Key? key}) : super(key: key);

  @override
  _HsState createState() => _HsState();
}

class _HsState extends State<Hs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff6885e3), Color(0xffffffff)],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            stops: [0.3, 1.2]),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'الحساب',
                style: TextStyle(fontFamily: "Cairo"),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.person_outline,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "حسابي",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => myacount()));
                              },
                              icon: Icon(
                                Icons.navigate_next_outlined,
                                color: Color(0xff6885e3),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                              onTap: () {},
                              leading: Icon(
                                Icons.notification_important_outlined,
                                color: Color(0xff6885e3),
                              ),
                              title: Text(
                                "اشعارات",
                                style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 25,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              notificationPage()));
                                },
                                icon: Icon(
                                  Icons.navigate_next_outlined,
                                  color: Color(0xff6885e3),
                                  size: 30,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.info_outline,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "من نحن",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutUsPage()));
                              },
                              icon: Icon(
                                Icons.navigate_next_outlined,
                                color: Color(0xff6885e3),
                                size: 30,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      elevation: 0.8,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.9),
                                      actionsPadding:
                                          EdgeInsets.only(bottom: 20),
                                      contentPadding: EdgeInsets.only(
                                        top: 0,
                                      ),
                                      contentTextStyle: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      content: Container(
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "تأكد من معلوماتك ",
                                              style: TextStyle(
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30,
                                              child: FlatButton(
                                                child: Text(
                                                  'نعم',
                                                  style: TextStyle(
                                                      fontFamily: "Cairo"),
                                                ),
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyHomePage(
                                                                title: "",
                                                              )));
                                                },
                                              ),
                                              width: 100,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff6885e3),
                                                      Color(0xffffffff)
                                                    ],
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.topLeft,
                                                    stops: [0, 1]),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              child: FlatButton(
                                                child: Text(
                                                  'لا',
                                                  style: TextStyle(
                                                      fontFamily: "Cairo"),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              width: 100,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff6885e3),
                                                      Color(0xffffffff)
                                                    ],
                                                    begin:
                                                        Alignment.bottomRight,
                                                    end: Alignment.topLeft,
                                                    stops: [0, 1]),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            },
                            leading: Icon(
                              Icons.logout_outlined,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "تسجيل الخروج",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
