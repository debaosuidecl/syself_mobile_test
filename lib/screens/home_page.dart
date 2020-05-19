import 'package:flutter/material.dart';
import 'package:learn_animations/screens/page_2.dart';
import 'package:learn_animations/screens/signup.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  static const routeName = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6C63FF),
              Color(0xff273392),
              Color(0xff141b4d),
            ],
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage("assets/images/logo.png"),
              )),
              // color: Colors.green,
              // alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                // reach facebook api
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     offset: Offset(0, 0.8),
                      //     // spreadRadius: 0.3,
                      //     color: Color(0xFF333333),
                      //   )
                      // ],
                      color: Color.fromRGBO(66, 103, 178, 1),
                      // color: Color(0xFF3B5998),
                      borderRadius: BorderRadius.circular(6)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  child: Text(
                    "CONTINUE WITH FACEBOOK",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // reach facebook api
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  decoration: BoxDecoration(
                      //   boxShadow: [
                      //   BoxShadow(
                      //     offset: Offset(0, 0.8),
                      //     // spreadRadius: 0.3,
                      //     color: Color(0xFF333333),
                      //   )
                      // ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  child: Text(
                    "CONTINUE WITH GOOGLE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // print("I dey here");
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rotate,
                    child: SignUp(),
                  ),
                );
                // // reach facebook api
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => PageTwo(),
                //       // PageTransition
                //     ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     offset: Offset(0, 0.8),
                      //     // spreadRadius: 0.3,
                      //     color: Color(0xFF333333),
                      //   )
                      // ],
                      color: Colors.teal[500],
                      borderRadius: BorderRadius.circular(6)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  child: Text(
                    "SIGN UP WITH EMAIL",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     Navigator.push(
      //         context,
      //         // MaterialPageRoute(
      //         //   builder: (context) => PageTwo(),
      //         //   // PageTransition
      //         // ),
      //         PageTransition(
      //             type: PageTransitionType.rightToLeftWithFade,
      //             child: PageTwo()));
      //     // Navigator.pushNamed(context, PageTwo.routeName);
      //   },
      // ),
    );
  }
}
