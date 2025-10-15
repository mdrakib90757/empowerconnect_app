import 'package:empowerconnect_app/core/shared_widgets/custom_navigation.dart';
import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:empowerconnect_app/feature/auth/view/ragistraion_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LogIn',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: APPColor.backgroundColor,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () {
        //     // Handle back button
        //   },
        // ),
      ),
      body: Container(
        color: APPColor.backgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child:
              //Icon(  Icons.handshake,size: 100,color: Colors.white,)
              Image.asset(
                'assets/img/handshake.png',
                height: 150,
                width: 150,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
               padding: const EdgeInsets.only(left: 20,right:20,top: 150),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      _buildTextField(
                        hintText: 'Username or Email',
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 16.0),
                      _buildTextField(
                        hintText: 'Password',
                        icon: Icons.lock,
                        obscureText: true,
                      ),
                      const SizedBox(height: 32.0),
                      ElevatedButton(
                        onPressed: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CustomNavigation(),
                          ),);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                        APPColor.backgroundColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          // Handle Forgot Password
                        },
                        child:  Text(
                          'Forgot Password?',
                          style: TextStyle(color: APPColor.backgroundColor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account? ",
                              style: TextStyle(color: Colors.black54)),
                          TextButton(
                            onPressed: () {
                              // Navigate to Registration Page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegistrationPage(),
                                ),
                              );
                            },
                            child:  Text(
                              'Register Now',
                              style: TextStyle(color: APPColor.backgroundColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildTextField({
    required String hintText,
    IconData? icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      cursorColor: APPColor.backgroundColor,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon, color: Colors.grey[700]) : null,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:  BorderSide(color: APPColor.backgroundColor, width: 2),
        ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
    );
  }
}