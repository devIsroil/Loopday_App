import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_day_16/homework/loopday_app/third_page.dart';
import 'package:flutter_day_16/widgets/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(40),
                width: 350.w,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFF),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 200.w,
                  height: 200.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5FA),
                    shape: BoxShape.circle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/uranus.png",
                        width: 70.w,
                      ),
                      Text(
                        "Loopday App",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 22.sp),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              140.height(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    width: 330.w,
                    height: 330,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFF),
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                      bottom: -20,
                      right: 10,
                      child: Image.asset(
                        "assets/images/loopday_app_img1 (1).png",
                        width: 320,
                      )),
                ],
              ),
              30.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Color(0xff4155FA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  5.width(),
                  CircleAvatar(
                    radius: 3.5,
                    backgroundColor: Color(0xff4155FA),
                  ),
                  5.width(),
                  CircleAvatar(
                    radius: 3.5,
                    backgroundColor: Color(0xff4155FA),
                  ),
                ],
              ),
              60.height(),
              Text(
                "Set Your Schedule",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
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
              20.height(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ThirdPage()));
                },
                child: ZoomTapAnimation(
                  child: Container(
                    width: 265.w,
                    height: 60.r,
                    decoration: BoxDecoration(
                        color: Color(0xff4155FA),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
