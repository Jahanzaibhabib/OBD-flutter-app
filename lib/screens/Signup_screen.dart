import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obd/screens/Signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Color(0xFF0A1128),
      body: Center(
        child: Container(
          height: height * .85,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'OBD APP',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 43),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create your Account',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create your account to get max of the services',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
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
                  obscureText: true, // Hides the password input
                  style: TextStyle(
                      color: Colors.white), // Text color inside the field
                  decoration: InputDecoration(
                    hintText: 'Password', // Placeholder text
                    hintStyle: TextStyle(
                        color: Colors.white), // Color for the placeholder
                    filled: true, // Enables background color for the text field
                    fillColor: Color(0xFF0D2338), // Dark blue background color
                    border: OutlineInputBorder(
                      // Rounded corners
                      borderSide: BorderSide.none, // No border line
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20), // Padding inside the text field
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
                      'Next',
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
      const Text("Already a member?", style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SigninScreen()));
        },
        child: const Text(
          " Sign In Now",
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
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
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
