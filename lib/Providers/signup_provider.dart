import 'package:flutter/material.dart';
import 'package:login/Models/usermodel.dart';
import 'package:login/Services/signup_service.dart';

class SignupProvider extends ChangeNotifier
{
  Future<Map<String,dynamic>> post(SignupModel user)async
  {
    return await SignupService.post(user);
  }
}