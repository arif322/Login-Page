import 'package:flutter/material.dart';
import 'package:login_page/pages/signup.dart';
import 'package:login_page/widget/Gesturebutton.dart';
import 'package:login_page/widget/Textpage.dart';
import 'package:login_page/widget/buttonpage.dart';
import 'package:lottie/lottie.dart';

class LogInPage extends StatefulWidget {
  static const String path = "LogPage";
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white30.withOpacity(0.3),
            // width: MediaQuery.of(context).size.height,
            // height: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Lottie.asset(
                      "images/login.json",
                      // height: 200,
                      // width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "welcome to login Page",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.cyan),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Please Log in your Page",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Textpage(
                        textType: true,
                        obsecure: false,
                        hint: "Email",
                        icons: Icon(Icons.person),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Column(
                    children: [
                      Textpage(
                          textType: false,
                          obsecure: true,
                          icons: Icon(Icons.lock),
                          icon: Icon(Icons.remove_red_eye)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      ButtonPage(
                        onPressed: () {},
                        tittle: "LogIn",
                        color: Colors.teal,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureButtonPage(
                      images: AssetImage("images/facebook.jpg"),
                      onTap: () {},
                    ),
                    GestureButtonPage(
                      images: AssetImage("images/google.jpg"),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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
