import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, 
      body: SafeArea(
        
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Add your details to login",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomTextField(
                    hint: "Your Email",
                    controller: controller.emailController,
                  ),

                  const SizedBox(height: 20),

                  CustomTextField(
                    hint: "Password",
                    obscure: true,
                    controller: controller.passwordController,
                  ),

                  const SizedBox(height: 30),

              
                  PrimaryButton(
                    title: "Login",
                    onPressed: controller.login,
                  ),  

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an Account? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: controller.goToSignup,
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFFF5A00),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      
      ),
    );
  }
}