import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/widget/Textpage.dart';
import 'package:login_page/widget/buttonpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white70.withOpacity(0.3),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.s,
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Create your Account",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Textpage(
                                textType: true,
                                hint: "Your Full Name",
                                icons: Icon(Icons.account_box_rounded),
                                obsecure: false),
                            Textpage(
                              hint: "Email",
                              textType: true,
                              obsecure: false,
                              icons: Icon(Icons.email_outlined),
                            ),
                            Textpage(
                              hint: "Phone No",
                              textType: false,
                              obsecure: false,
                              icons: Icon(Icons.phone_android),
                            ),
                            Textpage(
                              hint: "password",
                              textType: false,
                              obsecure: true,
                              icons: Icon(Icons.lock),
                              icon: Icon(Icons.remove_red_eye),
                            ),
                            Textpage(
                              hint: "confirm password",
                              textType: true,
                              obsecure: true,
                              icons: Icon(Icons.lock),
                              icon: Icon(Icons.remove_red_eye),
                            ),
                          ]
                              .map((e) => Padding(
                                    child: e,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                  ))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ButtonPage(
                        onPressed: () {},
                        tittle: "Create",
                        color: Colors.teal,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Do you have an Account?",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LogInPage()));
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
