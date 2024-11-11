import 'package:flutter/material.dart';
import 'package:login/Models/user_model.dart';
import 'package:login/Services/user_service.dart';

class UserProvider extends ChangeNotifier
{
  Future<Map<String,dynamic>> post(UserModel user)async
  {
    return await UserService.post(user);
  }
}