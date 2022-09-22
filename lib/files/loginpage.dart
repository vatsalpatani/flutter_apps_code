import 'package:flutter/material.dart';

import '../homepage.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  var username = '', password = '';

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/win11.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                      onChanged: (value) => username = value,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                      onChanged: (value) => password = value,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                      ),
                      onPressed: () {
                        var name = "vatsal";
                        var pass = "1234";
                        if (name == username && pass == password) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MyHomeApp()));
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const CustomDialog();
                              });
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Alert',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        "username or password is wrong..!!",
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Ok",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
