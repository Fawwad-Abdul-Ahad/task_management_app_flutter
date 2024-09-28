import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_management_app/constants/color.dart';

class TaskStatus extends StatefulWidget {
  const TaskStatus({super.key});

  @override
  State<TaskStatus> createState() => _TaskStatusState();
}

class _TaskStatusState extends State<TaskStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_sharp, size: 24),
        title: const Text(
          "Task Status",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width * 1,
        height: Get.height * 1,
        constraints: const BoxConstraints(
          minHeight: 200,
          maxHeight: 800,
          minWidth: 200,
          maxWidth: double.infinity,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width * 1,
              // color: Colors.amberAccent,
              height: Get.height * 0.25,
              child: CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 30.0,
                percent: 0.7,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "65%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26.0),
                    ),
                    Text(
                      "Complete",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: greyColor),
                    ),
                  ],
                ),
                progressColor: borderColor,
                backgroundColor: const Color.fromARGB(255, 211, 221, 255),
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            Container(
              width: Get.width * 1,
              height: Get.height * 0.03,
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 1,
                    // color: Color s.blue,
                    child:const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.green,
                        ),
                        Text(
                          "To Do",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 1,
                    // color: Colors.blue,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.yellow,
                        ),
                        Text(
                          "In Progress",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 1,
                    // color: Colors.blue,
                    child:const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.blue,
                        ),
                        Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Container(
              width: Get.width * 1,
              height: Get.height * 0.04,
              // color: Colors.lightBlue,
              child: const Text(
                "Monthly",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: borderColor, width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Text(
                          "18 Task now - 18 Task Completed",
                          style: TextStyle(
                              fontSize: 16,
                              color: greyColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: borderColor, width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text(
                          "In Progress",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Text(
                          "2 Task now - 1 Task Started",
                          style: TextStyle(
                              fontSize: 16,
                              color: greyColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: borderColor, width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "To Do",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Text(
                          "2 Task now - 1 Upcoming",
                          style: TextStyle(
                              fontSize: 16,
                              color: greyColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
