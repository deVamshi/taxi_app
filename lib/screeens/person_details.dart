import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/constants/app_colors.dart';
import 'package:taxi_app/misc.dart';
import 'package:taxi_app/widgets/repeat_code.dart';

// 1.Location
// 2.Country
// 3.city
// 4.name
// 5.surname
// 6.phonenum
// 7.autonomous/company/salaried
// 8.profile picture
// 9.taxi details,eg:car no,brand ,model
// 10.Bank account details

class PersonDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text("Driver Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Let's start with your details",
                          style: GoogleFonts.lato(
                            wordSpacing: 3,
                            fontSize: 30,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      customTextFieldForDetails("First Name"),
                      customTextFieldForDetails("Last Name"),
                      customTextFieldForDetails("Phone Number"),
                      // customTextFieldForDetails("House Number"),
                      customTextFieldForDetails("Landmark"),
                      customTextFieldForDetails("City"),
                      customTextFieldForDetails("Country"),
                      const SizedBox(
                        height: 15,
                      ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child:
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              width: (double.maxFinite),
              height: 50,
              child: RaisedButton(
                  onPressed: () {},
                  child: Text("Next",
                      style: GoogleFonts.lato(
                          color: Colors.grey[100], fontSize: 20)),
                  color: buttonColor),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
