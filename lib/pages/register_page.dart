import 'package:client_footwear/controller/login_controller.dart';
import 'package:client_footwear/pages/login_page.dart';
import 'package:client_footwear/widget/otp_txt_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<LoginController> (builder: (ctrl) {
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
              'Create Your Account !!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              controller: ctrl.registerNameCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.phone_android),
                labelText: 'Your Name',
                hintText: 'Enter your name',
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              controller: ctrl.registerNumberCtrl,
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
            OtpTextField(otpController: ctrl.otpController, visible: ctrl.otpFieldShow, 
            onComplete: (otp) {  
              ctrl.otpEntered = int.tryParse(otp!);
            },),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (ctrl.otpFieldShow) {
                  ctrl.addUser();
                } else {
                  ctrl.sendOtp();
                }
                
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple
              ), 
              child: Text(ctrl.otpFieldShow ? 'Register' : 'Send OTP'),
            ),

            TextButton(
            onPressed: () {
              Get.to(const LoginPage());
            }, 
            child: const Text('Login')
            )

          ],
          ),
        ),
      );
    });
    
  }
}