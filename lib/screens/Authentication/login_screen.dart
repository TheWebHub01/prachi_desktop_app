import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prachi_desktop_app/constants/progress_loader/progress_loader.dart';
import 'package:prachi_desktop_app/screens/company_master/company_master_screen.dart';
import 'package:prachi_desktop_app/screens/home_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool checkBoxValue = false;
  final _formKey = GlobalKey<FormState>();
  Future<void> loginUser(
      String email, String password, BuildContext context) async {
    // Trim inputs
    email = email.trim();
    password = password.trim();

    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      return; // Exit if form is not valid
    }

    try {
      // Sign in with Firebase Auth
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // Store email in SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);

      // Navigate to the next screen
      if (context.mounted) {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Welcome back, $email!'),
          duration: const Duration(seconds: 2),
        ),
      );
    } on FirebaseAuthException catch (e) {
      // Handle specific FirebaseAuth errors
      print("=========>$e");
      String errorMessage = 'An error occurred. Please try again.';
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Incorrect password.';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      // Handle unexpected errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An unexpected error occurred: $e'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ProgressLoader pl = ProgressLoader(context, isDismissible: true);

    return LayoutBuilder(
      builder: (context, constraints) {
        // Use constraints for adaptive layout
        bool isWide = constraints.maxWidth > 800; // Wide screen threshold
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!isWide)
                                Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/logo.svg",
                                    height: 30.h,
                                    width: 30.w,
                                  ),
                                ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "Login to access your travelwise account",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black.withOpacity(0.75),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              customTextformfield(
                                  "Email", _emailController, false),
                              SizedBox(height: 3.h),
                              customTextformfield(
                                  "Password", _passwordController, true),
                              SizedBox(height: 2.h),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkBoxValue,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        checkBoxValue = newValue!;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff8C8C8C),
                                    ),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {
                                      // Handle forgot password
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                children: [
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (_formKey.currentState!.validate()) {
                                          await pl.show();
                                          await loginUser(
                                              _emailController.text,
                                              _passwordController.text,
                                              context);
                                          await pl.hide();
                                        }
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Log In",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        // Handle join as member
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: Colors.blue),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Join as Member",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (isWide)
                  Expanded(
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/login_logo.svg",
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget customTextformfield(
      String label, TextEditingController controller, bool isPassword) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}
