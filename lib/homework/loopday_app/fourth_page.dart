import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_16/homework/loopday_app/fifth_page.dart';
import 'package:flutter_day_16/widgets/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  bottom: 0,
                  right: 15,
                  child: Image.asset(
                    "assets/images/loopday_app_img3.png",
                    width: 320,
                  )),
            ],
          ),
          30.height(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 3.5,
                backgroundColor: Color(0xff4155FA),
              ),
              5.width(),
              CircleAvatar(
                radius: 3.5,
                backgroundColor: Color(0xff4155FA),
              ),
              5.width(),
              Container(
                width: 40.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: Color(0xff4155FA),
                  borderRadius: BorderRadius.circular(20),
                ),
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
                  builder: (context) => const FifthPage()));
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
    );
  }
}
