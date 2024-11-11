import 'package:flutter/material.dart';

class LoginFeild extends StatelessWidget {
  LoginFeild({super.key,required this.label});
  final label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        label: Text(label),
      ),
    );
  }
}
