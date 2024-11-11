import 'package:flutter/material.dart';
import 'package:login/Models/user_model.dart';
import 'package:login/Models/usermodel.dart';
import 'package:login/Providers/signup_provider.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  final keyy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SignupProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: keyy,
        child:
        Column(
          children: [
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty)
                  {
                    return "Required";
                  }
                if(value.length < 5)
                  {
                    return "username must be more than 5 chracters";
                  }
                return null;
              },

              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label:const Text("username"),
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty)
                {
                  return "Required";
                }
                if(value.length < 8)
                {
                  return "password must be more than 8 chracters";
                }
                return null;
              },
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label:const Text("password"),
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty)
                {
                  return "Required";
                }
                if(!value.endsWith("@gmail.com"))
                {
                  return "uasdhkasasdd";
                }
                return null;
              },
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label:const Text("email"),
              ),
            ),
            MaterialButton(onPressed: () async{
              if(keyy.currentState!.validate())
                {
                  var samya = await provider.post(SignupModel(password: password.text, username: username.text,email: email.text));
                  if(samya["message"] == null)
                  {
                    print("signup");
                  }
                  else
                  {
                    print("ashukdkasdgk");
                  }
                }
              else
                {

                }
            },child:const Text("signup"),)
          ],
        ),
      ),
    );
  }
}
