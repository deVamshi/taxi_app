import 'package:flutter/material.dart';

InputDecoration textFieldDecoration() {
  return InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  );
}


Widget customTextFieldForDetails(
  String heading,
) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
    height: 72,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 15,
          child: Text(
            "  $heading",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 13),
          ),
        ),
        Card(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: textFieldDecoration(),
            ),
          ),
        ),
      ],
    ),
  );
}


TextStyle profileTextStyle(){
  return TextStyle(color: Colors.white, fontSize: 15);
}