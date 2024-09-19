import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obd/screens/Signup_screen.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: customBlueColor,
      body: Center(
        child: Container(
          height: height * .85,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'OBD APP',
                style: Montserrat(43, Colors.white, FontWeight.w800)),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please login to OBD APP',
                style: Montserrat(14, Colors.white, FontWeight.w600)
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Login to get max of the services',
                style:Montserrat(13, Colors.white, FontWeight.w600)),
              SizedBox(
                height: 50,
              ),
              Container(
                width: width * .88,
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF0D2338),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width * .88,
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF0D2338),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      )),
                  child: Container(
                    color: Colors.cyan,
                    alignment: Alignment.center,
                    width: width * .74,
                    height: height * .06,
                    child: Text(
                      'Login',
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              ForgotPassword(context),
              SizedBox(
                height: 60,
              ),
              signUpOption(context),
            ],
          ),
        ),
      ),
    );
  }
}

Row signUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Not a member yet?", style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignupScreen()));
        },
        child: const Text(
          " Sign Up Now",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}

Row ForgotPassword(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SigninScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            " Forgot Password?",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      )
    ],
  );
}
