class SignupModel
{
  SignupModel({required this.password , required this.username,required this.email});
  String username;
  String password;
  String email;
  static Map<String, dynamic> tojson(SignupModel user)
  {
    return {"username":user.username,"password":user.password,"email":user.email};
  }
}