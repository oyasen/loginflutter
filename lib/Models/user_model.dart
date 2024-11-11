class UserModel
{
    UserModel({required this.password , required this.username});
    String username;
    String password;
    static Map<String, dynamic> tojson(UserModel user)
    {
      return {"username":user.username,"password":user.password};
    }
}