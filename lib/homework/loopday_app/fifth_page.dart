import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_day_16/homework/loopday_app/login_page.dart';
import 'package:flutter_day_16/homework/loopday_app/register_page.dart';
import 'package:flutter_day_16/widgets/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          80.height(),
          Center(
            child: Column(
              children: [
                Text(
                  "Let's start your\nSchedule activity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                20.height(),
                Text(
                  "Quickly see your upcoming event, task,\nconference calls, weather, and more",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                15.height(),
                Image.asset(
                  "assets/images/loopday_app_img1 (1).png",
                  width: 280,
                ),
                10.height(),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterPage()));
                  },
                  child: ZoomTapAnimation(
                    child: Container(
                      width: 310.w,
                      height: 60.r,
                      decoration: BoxDecoration(
                          color: Color(0xff4155FA),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                          child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      )),
                    ),
                  ),
                ),
                10.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ZoomTapAnimation(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 150.w,
                        height: 60.r,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          child: Row(
                            children: [
                              Image.asset("assets/images/apple-logo.png"),
                              5.width(),
                              Text(
                                "Apple",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    10.width(),
                    ZoomTapAnimation(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        width: 150.w,
                        height: 60.r,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            children: [
                              Image.asset("assets/images/google.png"),
                              5.width(),
                              Text(
                                "Google",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                10.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Have Account ?  ",
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Color(0xff4155FA),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
