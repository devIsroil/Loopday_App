import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_16/homework/loopday_app/first_page.dart';
import 'package:flutter_day_16/homework/task1.dart';
import 'package:flutter_day_16/homework/task2.dart';
import 'package:flutter_day_16/homework/task3.dart';
import 'package:flutter_day_16/practise/task_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp( App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: Task1(),
          //home: TemperatureScreen(),
          //home: TodoListScreen(),
          home: TimerScreen(),
          //home: FirstPage(),
        );
      },
    );
  }
}
