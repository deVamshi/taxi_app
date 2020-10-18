import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:taxi_app/misc.dart';
import 'package:taxi_app/screeens/signup.dart';
import 'package:taxi_app/widgets/custom_logo_button.dart';
import 'package:taxi_app/widgets/space_widget.dart';
import 'package:taxi_app/widgets/text_field.dart';

class Login extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Align(
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Icon(
                  Icons.pin_drop_rounded,
                  size: 100,
                  color: Colors.indigo[900],
                ),
              ),
              Center(
                child: Text(
                  "Fijo Taxi",
                  style: GoogleFonts.lato(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
              CustomTextField(
                header: "Email",
                controller: _emailController,
              ),
              CustomTextField(
                header: "Password",
                controller: _passwordController,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            onPressed: () {},
                            child: Text("Sign in",
                                style:
                                    GoogleFonts.lato(color: Colors.grey[100])),
                            color: Colors.indigo[900]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    const CustomLogoButton(
                        icon: LineAwesomeIcons.google_logo, color: Colors.red),
                    CustomLogoButton(
                      icon: LineAwesomeIcons.facebook,
                      color: Colors.blue[900],
                    ),
                    const CustomLogoButton(
                      icon: LineAwesomeIcons.google_logo,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
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
