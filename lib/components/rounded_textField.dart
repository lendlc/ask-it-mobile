import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText, errorText;

  const RoundedTextField({
    Key key,
    this.hintText,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          //errorText: 'This field is Required',
          //labelText: 'First Name',
          //Border's Proprety when not Focused
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
