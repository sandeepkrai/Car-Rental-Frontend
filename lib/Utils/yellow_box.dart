import 'package:flutter/material.dart';

class Yellow_Box extends StatelessWidget {
  const Yellow_Box({
    super.key,
    required this.width,
    required this.dl,
    required this.height,
  });

  final double width;
  final TextEditingController dl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        controller: dl,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Driving License',
          labelStyle: TextStyle(
              fontSize: height * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.yellow)),
        ),
      ),
    );
  }
}
