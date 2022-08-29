import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  var username, password;

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/india.jpg",
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
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Container(
              //   height: 200,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/images/windows.jpg"),
              //         fit: BoxFit.cover),
              //   ),
              //   // child: // Foreground widget here
              // ),
              // Positioned.fill(
              //   //
              //   child: Image(
              //     image: AssetImage('assets/images/windows1.jpg'),
              //     fit: BoxFit.fill,
              //   ),
              // ),
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
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(150, 40)),
                      onPressed: () {
                        var name = "Vatsal";
                        var pass = "rajubhai";
                        if (name == username && pass == password) {
                          Navigator.pushNamed(context, '/homepage');
                        } else {
                          print('Something Went Wrong');
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
