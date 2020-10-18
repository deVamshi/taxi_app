import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:taxi_app/misc.dart';
import 'package:taxi_app/screeens/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Align(
        child: ScrollConfiguration(
          behavior: MyBehavior(),
                  child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  Icons.pin_drop_rounded,
                  size: 100,
                  color: Colors.indigo,
                ),
              ),
              Center(
                child: Text(
                  "Taxi",
                  style: GoogleFonts.lato(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
              SizedBox(
                height: 20,
              ),
                       Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Login to your account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.grey[600],
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.indigo,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        child: RaisedButton(
                            onPressed: () {
                               //  authentications.signin("vamsubala@gmail.com","vamsi199");
                             // It will print signed suceessfully and uid is balabla
                            },
                            child: Text("Sign in",
                                style: GoogleFonts.lato(color: Colors.grey[100])),
                            color: Colors.indigo),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "- Or Sign in with -",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Card(
                          child: Icon(
                            LineAwesomeIcons.google_logo,
                            size: 30,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Card(
                          child: Icon(
                            LineAwesomeIcons.facebook,
                            size: 30,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Card(
                          child: Icon(
                            LineAwesomeIcons.twitter,
                            size: 30,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement((context),
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                          fontSize: 17,
                                decoration: TextDecoration.underline,
                                color: Colors.indigo),
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
