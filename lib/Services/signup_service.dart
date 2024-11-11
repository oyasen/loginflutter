import 'package:dio/dio.dart';
import 'package:login/Models/usermodel.dart';

class SignupService
{
  static Dio dio = Dio();

  static Future<Map<String,dynamic>> post(SignupModel user)async
  {
    try
    {
      const url = "https://dummyjson.com/users/add";
      var response = await dio.post(url,data: SignupModel.tojson(user));
      return response.data;
    }
    catch(e)
    {
      return {"message":"Invalid credentials"};
    }
  }
}