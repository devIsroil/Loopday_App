import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_day_16/widgets/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'last_page.dart';

class ConfirmPhonePage extends StatefulWidget {
  const ConfirmPhonePage({Key? key}) : super(key: key);

  @override
  State<ConfirmPhonePage> createState() => _ConfirmPhonePageState();
}

class _ConfirmPhonePageState extends State<ConfirmPhonePage> {
  final TextEditingController codeController1 = TextEditingController();
  final TextEditingController codeController2 = TextEditingController();
  final TextEditingController codeController3 = TextEditingController();
  final TextEditingController codeController4 = TextEditingController();
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.height(),
              Text(
                "Confirm your phone number",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              10.height(),
              Text(
                "Check your message, because we send you a code for Verification",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14.sp,
                ),
              ),
              30.height(),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: codeController1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  10.width(),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: codeController2,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  10.width(),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: codeController3,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  10.width(),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: codeController4,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              15.height(),
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.warning_amber_sharp,
                    color: Colors.grey,
                  ),
                  Text(
                    "  Helper text",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              300.height(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    String code1 = codeController1.text.trim();
                    String code2 = codeController2.text.trim();
                    String code3 = codeController3.text.trim();
                    String code4 = codeController4.text.trim();

                    if (code1.isEmpty || code2.isEmpty || code3.isEmpty || code4.isEmpty) {
                      setState(() {
                        errorMessage = "Please fill in all sections";
                      });
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Error"),
                            content: Text("Please fill in all sections."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) {
                          return const LastPage();
                        }),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: const Color(0xff4155FA),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                          fontSize: 16.sp,
                        ),
                      ),
                      TextSpan(
                        text: "Terms of Use ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
