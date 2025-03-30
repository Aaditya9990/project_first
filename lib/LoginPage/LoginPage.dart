import 'package:flutter/material.dart';
import 'package:project_first/HomeScreen/HomeScreen.dart';

import 'login_api/login_model.dart';
import 'login_api/postapi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisble = false;
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  void initState() {
    super.initState();

    passwordVisble = true;
  }

  bool isloader = false;

  getPostData(String userName, String password) async {
    var loginModel = await PostApi().postUser(userName, password);

    if (loginModel.success) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }else{
      print("Login Failure");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Email"),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text("Password"),
            TextField(
              obscureText: passwordVisble,
              controller: passController,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordVisble = !passwordVisble;
                    });
                  },
                  icon: Icon(
                    passwordVisble ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                validation();
              },
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text("button"),
            ),
          ],
        ),
      ),
    );
  }

  void validation() {
    var userName = emailController.text.trim();
    var pass = passController.text.trim();

    if (userName.isEmpty) {
      print("Please enter user name");
    } else if (pass.isEmpty) {
      print("Please enter password");
    } else {
      getPostData(userName, pass);
    }
  }
}
