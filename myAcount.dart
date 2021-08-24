import 'dart:ui';

import 'package:flutter/material.dart';

import 'one/login.dart';

class myacount extends StatefulWidget {
  const myacount({Key? key}) : super(key: key);

  @override
  _myacountState createState() => _myacountState();
}

class _myacountState extends State<myacount> {
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
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                "حسابي",
                style: TextStyle(fontFamily: "Cairo", fontSize: 25),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.4),
                              radius: 40,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/3.png'),
                                        fit: BoxFit.cover)),
                                //backgroundImage: AssetImage('assets/images/3.png'),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Container(
                                child: Text(
                                  "0992638853",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 20),
                                ),
                                padding: EdgeInsets.only(right: 10),
                              )),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff6885e3),
                                      Color(0xffffffff)
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.4, 2]),
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.white, width: 2),
                                    top: BorderSide(
                                        color: Colors.white, width: 2),
                                    right: BorderSide(
                                        color: Colors.white, width: 2),
                                    left: BorderSide(
                                        color: Colors.white, width: 2)),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: RaisedButton(
                                color: Colors.transparent,
                                elevation: 0,
                                onPressed: () {
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
                                              fontFamily: "Cairo",
                                              fontSize: 20,
                                              color: Colors.black),
                                          content: Container(
                                            height: 150,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("هل انت متاكد "),
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
                                                                      title:
                                                                          "")));
                                                    },
                                                  ),
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff6885e3),
                                                          Color(0xffffffff)
                                                        ],
                                                        begin: Alignment
                                                            .bottomRight,
                                                        end: Alignment.topLeft,
                                                        stops: [0, 1]),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
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
                                                        begin: Alignment
                                                            .bottomRight,
                                                        end: Alignment.topLeft,
                                                        stops: [0, 1]),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      });
                                },
                                child: Text(
                                  "تغيير رقم الهاتف",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
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
