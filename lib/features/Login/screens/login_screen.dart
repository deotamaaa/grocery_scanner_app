import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      const Gap(8.0),
                      const Gap(8.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address/ Username',
                          hintText: 'e.g. john doe',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (bool? value) {},
                              ),
                              const Text('Remember me?'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password?'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 48.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('Log In'),
                      ),
                      const SizedBox(height: 16.0),
                      const Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Or Continue With'),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Platform.isIOS
                          ? ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.apple),
                              label: const Text('Sign in Apple Id'),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 48.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )
                          : Container(),
                      const Gap(8.0),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.g_mobiledata),
                        label: const Text('Sign in with Google'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 48.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Guest Mode'),
                        ),
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
}
