import 'package:example/pageView.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/8.jpg'), fit: BoxFit.fill),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      child: Text(
                        "أهلاً بك في تطبيق دِلّني",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xff202936),
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 250,
                          height: 245,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/3.png'),
                                  fit: BoxFit.fill)),
                        )
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff6885e3), Color(0xffffffff)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            stops: [0.4, 2]),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: RaisedButton(
                        color: Colors.transparent,
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pageView()));
                        },
                        child: Text(
                          "بدء",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
