import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/model_view_controller/chatScreen/chat_screen.dart';
import 'package:task_management_app/model_view_controller/profile_screen/profile_screen.dart';
import 'package:task_management_app/model_view_controller/refresher_screen/refresher_screen.dart';
import 'package:task_management_app/model_view_controller/siginin_screen/signin_screen.dart';
// import 'package:task_management_app/model_view_controller/status_screen/status_screen.dart';
import 'package:task_management_app/model_view_controller/taskStatus/task_status_screen.dart';
import 'package:task_management_app/model_view_controller/task_screen/add_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
         debugShowCheckedModeBanner: false,
         home:  Refresher(),
    );
  }
}
