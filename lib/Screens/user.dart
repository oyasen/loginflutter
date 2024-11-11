import 'package:flutter/material.dart';
import 'package:login/Models/user_model.dart';
import 'package:login/Providers/user_provider.dart';
import 'package:login/Widgets/login_feild.dart';
import 'package:provider/provider.dart';

class User extends StatelessWidget {
  User({super.key});
 TextEditingController username = TextEditingController();
 TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UserProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        child:
        Column(
          children: [
            TextFormField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label:const Text("username"),
              ),
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label:const Text("password"),
              ),
            ),
            MaterialButton(onPressed: () async{
              var samya = await provider.post(UserModel(password: password.text, username: username.text));
              if(samya["message"] == null)
                {
                  print("login");
                }
              else
                {
                  print("ashukdkasdgk");
                }
            },child:const Text("Login"),)
          ],
        ),
      ),
    );
  }
}
