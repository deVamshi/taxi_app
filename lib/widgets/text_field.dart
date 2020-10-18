import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String header;
  final TextEditingController controller;

  const CustomTextField({this.header, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "$header",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
      ),
    );
  }
}
