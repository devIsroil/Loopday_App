import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_day_16/homework/loopday_app/confirm_phone_number.dart';
import 'package:flutter_day_16/homework/loopday_app/first_page.dart';
import 'package:flutter_day_16/homework/loopday_app/register_page.dart';
import 'package:flutter_day_16/widgets/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = "";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.height(),
              Text(
                "Country of residance",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp),
              ),
              10.height(),
              Text(
              "Add your Phone number fo Verification ID" ,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14.sp),
              ),
              30.height(),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(CupertinoIcons.flag),
                  hintText: "+998 00 000 00 00",
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                //errorText: errorMessage.isEmpty ? null : errorMessage,
              ),
              15.height(),
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Send it another way ? ",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 16.sp),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConfirmPhonePage()));
                        },
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Color(0xff4155FA),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              350.height(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    String email = emailController.text.trim();

                    if (email.isEmpty) {
                      errorMessage = "Please fill in all required sections";
                      setState(() {});
                    } else if (!email.contains("+998")) {
                      errorMessage = "Please enter a valid number";
                      setState(() {});
                    } else {
                      //
          
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (ctx) {
                        return const ConfirmPhonePage();
                      }));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: const Color(0xff4155FA),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),
          
              20.height(),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By continuing you agree to Loana's\n    ",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "Terms of Use ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: "& ",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16.sp,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
