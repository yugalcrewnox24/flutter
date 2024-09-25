import 'package:flutter/material.dart';
import 'package:my_first_project/components/my_button.dart';
import 'package:my_first_project/components/square_tile.dart';
import 'package:my_first_project/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernamecontrolller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //headline
              const SizedBox(height: 50),

              const Icon(
                Icons.lock,
                size: 100,
              ),

              //welcome back you've missed !
              const SizedBox(height: 50),
              const Text(
                'welcome back, you been missed',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              //username textfiled
              const SizedBox(height: 25),
              MyTextField(
                controller: usernamecontrolller,
                hinttext: 'username',
                obscuretext: true,
              ),

              //passward textfiled
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordcontroller,
                hinttext: 'password',
                obscuretext: false,
              ),

              //forgot textfiled
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              //sigh in botton
              const SizedBox(height: 15),
              MyButton(
                ontap: signUserIn,
              ),

              //continue within
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              //google + apple sigh in botton
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: 'lib/images/google.jpeg'),
                  SizedBox(width: 25),
                  SquareTile(imagepath: 'lib/images/apple.jpeg'),
                ],
              ),

              //not a memeber! register now
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
