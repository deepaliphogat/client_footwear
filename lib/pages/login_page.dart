import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
        ),

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome Back!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),

          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: const Icon(Icons.phone_android),
              labelText: 'Mobile Number',
              hintText: 'Enter your mobile number',
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple
            ), 
            child: const Text('Login'),
          ),

          TextButton(
          onPressed: () {}, 
          child: const Text('Register new account')
          )

        ],


      ),
      ),

      
    );
  }
}