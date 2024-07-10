
import 'package:dishdelight/Widgets/auth/auth_text_form_field.dart';
import 'package:dishdelight/Widgets/auth/google_sign_in_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? selectedGender;
  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<AuthController>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // CustomLoadingIndicator(isLoading: Provider.of<LoadingProvider>(context).loading),
          SingleChildScrollView(
            child: Container(
              color: Colors.white10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 20, right: 0, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Your Culinary Adventure Awaits",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Register Now',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue,
                                      fontStyle: FontStyle.italic),
                                ),
                              )
                            ],
                          ),

                          //text for register now
                          // Container(
                          //   margin: const EdgeInsets.only(top: 10),
                          //   child: const Text(
                          //     "Register now",
                          //     style: GoogleFonts.spaceGrotesk(
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                        ),
                        Image.asset(
                          'assets/images/food_image_login.png',
                          height: 130,
                        )
                      ],
                    ),
                  ),
                  Container(
                    // height: double.maxFinite,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.black,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //text create your account
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              margin: const EdgeInsets.only(top: 19),
                              child: const Text(
                                "Create your account",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Textfield for Name
                          AuthTextField(
                            validator: (value) {
                              if (value == '') {
                                return 'Enter Your Name';
                              } else {
                                return null;
                              }
                            },
                            // controller: controller.nameController,
                            topMargin: 20,
                            hintText: 'Enter your Name',
                            labelText: 'Name',
                          ),
                          //Textfield for Email
                          const AuthTextField(
                            // controller: controller.emailController,
                            // validator: (value) => emailValidation(value),
                            topMargin: 20,
                            hintText: 'Enter your Email Address',
                            labelText: 'Email Address',
                          ),
                          //Textfield for Password
                          AuthTextField(
                            // controller: controller.passwordController,
                            // validator: (value) => passwordValidation(value),
                            topMargin: 20,
                            hintText: 'Enter your Password',
                            labelText: 'Password',
                            // obscureText: controller.isPasswordVisible,
                            suffixIcon: IconButton(
                              onPressed: () {
                                // setState(() {
                                //   controller.isPasswordVisible =
                                //       !controller.isPasswordVisible;
                                // });
                              },
                              icon: const Icon(
                                // controller.isPasswordVisible
                                // ? Icons.visibility
                                Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          //Textfield for Confirm Password
                          AuthTextField(
                            // controller: controller.confPasswordController,
                            validator: (value) {
                              // if (value != controller.passwordController.text) {
                              //   return 'Password doesn\'t match';
                              // }
                              return null;
                            },
                            obscureText: true,
                            topMargin: 20,
                            labelText: 'Confirm Password',
                            hintText: 'Re-enter your Password to Confirm',
                          ),
                          //dropdown for Country
                          const SizedBox(height: 10),

                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: const EdgeInsets.only(top: 15, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, "/login");
                                },
                                child: const Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Button for Create an Account
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 30, left: 20, right: 20),
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.black12,
                                            spreadRadius: 0,
                                            offset: Offset(-5, 5))
                                      ],
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: const Center(
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Text for Already have an account

                          //Button for Login
                          GoogleSignInButton(
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
