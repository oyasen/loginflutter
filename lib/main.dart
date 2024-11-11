import 'package:flutter/material.dart';
import 'package:login/Providers/signup_provider.dart';
import 'package:login/Providers/user_provider.dart';
import 'package:login/Screens/Signup.dart';
import 'package:login/Screens/user.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(create:(context) => SignupProvider(),child: Signup(),),
    );
  }
}
