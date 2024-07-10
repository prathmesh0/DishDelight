
import 'package:dishdelight/Widgets/auth/auth_text_form_field.dart';
import 'package:dishdelight/Widgets/auth/google_sign_in_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 20, right: 20, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Welcome!",
                                style: TextStyle(
                                  fontSize: 35,
                                  letterSpacing: 0.6,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'Login to continue...',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue,
                                      fontStyle: FontStyle.italic),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/food_image_login.png',
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.black87,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //text create your account
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Login to Your Account",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Make sure that you already have an account.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const AuthTextField(
                            // validator: (value) => emailValidation(value),
                            labelText: "Email Address",
                            hintText: "Enter your Email Address",
                            // controller: controller.emailController,
                          ),
                          AuthTextField(
                            // validator: (value) => passwordValidation(value),
                            labelText: "Password",
                            hintText: "Enter your Password",
                            topMargin: 20,
                            // controller: controller.passwordController,
                            // obscureText: controller.isPasswordVisible,
                            suffixIcon: IconButton(
                              onPressed: () {
                                // setState(() {
                                //   controller.isPasswordVisible =
                                //       !controller.isPasswordVisible;
                                // });
                              },
                              icon: const Icon(
                                // // controller.isPasswordVisible
                                //     ? Icons.visibility
                                Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 10, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Flexible(
                                //   child: Row(
                                //     children: [
                                //       Checkbox(
                                //         checkColor: primaryColor,
                                //         activeColor: whiteColor,
                                //         side: BorderSide(
                                //           color: whiteColor
                                //         ),
                                //         value: isChecked, // A boolean variable to manage the checkbox state
                                //         onChanged: (newValue) {
                                //           setState(() {
                                //             isChecked = newValue!;
                                //           });
                                //         },
                                //       ),
                                //       Text(
                                //         "Remember Me",
                                //         style: GoogleFonts.spaceGrotesk(
                                //           color: whiteColor,
                                //           fontSize: 12,
                                //           fontWeight: FontWeight.w500,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      // onTap: (){AlertDialog()},
                                      child: GestureDetector(
                                        onTap: () {
                                          // progressBar.startProgressBar(context);
                                          // Navigator.push(
                                          //   context,
                                          // //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const FgPass()),
                                          // );
                                          // progressBar.stopProgressBar();
                                        },
                                        child: const Text("Forgot Password?",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              // decoration: TextDecoration.underline,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Button for Create an Account
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20, bottom: 30),
                              child: TextButton(
                                onPressed: () {
                                  // if (_formKey.currentState!.validate()) {
                                  //   print('validate');
                                  //   controller.signUserIn(context);

                                  // }

                                  Navigator.pushReplacementNamed(context, "/home");
                                },
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
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Text for Don't have an account
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () {
                                 Navigator.pushReplacementNamed(context, "/signup");
                                },
                                child: Center(
                                  child: const Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Button for Login
                          const SizedBox(
                            height: 100,
                          ),
                          GoogleSignInButton(
                            onTap: () {
                              // controller.signInWithGoogle(context);
                            },
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
          // CustomLoadingIndicator(isLoading: Provider.of<LoadingProvider>(context).loading),
        ],
      ),
    );
  }
}
