import 'package:fantasy_app/components/my_button.dart';
import 'package:fantasy_app/components/my_textfield.dart';
import 'package:fantasy_app/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: const Color.fromARGB(244, 9, 250, 1),
        elevation: 15,
        title: const Text('Fantasy App'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.grey,
              ),
              // welcome back, you have been missed!
              const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 35),
              // username textfield
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(220, 13, 250, 5),
                      blurRadius: 50,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
              ),

              const SizedBox(height: 25),
              // password textfield
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(220, 13, 250, 5),
                      blurRadius: 40,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 10),

              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 40),

              // or continue with login
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue with',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // google sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  // apple button
                  SquareTile(
                    imagePath: 'lib/images/apple.png',
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // not a member? resister now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Resister now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
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
