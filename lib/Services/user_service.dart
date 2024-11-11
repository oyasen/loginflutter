import 'package:dio/dio.dart';
import 'package:login/Models/user_model.dart';
class UserService
{
  static Dio dio = Dio();

  static Future<Map<String,dynamic>> post(UserModel user)async
  {
    try
    {
      const url = "https://dummyjson.com/user/login";
      var response = await dio.post(url,data: UserModel.tojson(user));
      return response.data;
    }
    catch(e)
    {
      return {"message":"Invalid credentials"};
    }
  }
}