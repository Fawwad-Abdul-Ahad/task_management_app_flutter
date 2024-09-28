import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/constants/color.dart';
import 'package:task_management_app/contollers/date_time_controller.dart';
import 'package:task_management_app/model_view_controller/createTeam/create_team_screen.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp, size: 24),
        title: Text(
          "Add Task",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: 200,
            maxHeight: 800,
            minWidth: 200,
            maxWidth: double.infinity,
          ),
          width: Get.width*1,
          height: Get.height*1,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Task Name",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 130, 130, 130)),
              ),
              SizedBox(height: Get.height * 0.01),
              TextFormField(
                style: const TextStyle(fontSize: 22, color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Mobile Application Design",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Text(
                "Team Member",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 130, 130, 130)),
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        child:
                            Image.asset('assets/images/user1.png', scale: 0.1),
                      ),
                      Text(
                        'Jeny',
                        style: TextStyle(fontSize: 16, color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.05),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        child:
                            Image.asset('assets/images/user2.png', scale: 0.1),
                      ),
                      Text(
                        'Mehrin',
                        style: TextStyle(fontSize: 16, color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.05),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        child:
                            Image.asset('assets/images/user3.png', scale: 0.1),
                      ),
                      Text(
                        'Avishek',
                        style: TextStyle(fontSize: 16, color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.05),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        child:
                            Image.asset('assets/images/user4.png', scale: 0.1),
                      ),
                      Text(
                        'Jafar',
                        style: TextStyle(fontSize: 16, color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.05),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Color.fromRGBO(117, 110, 243, 1.0),
                        width: 1.0,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 26,
                      color: Color.fromRGBO(117, 110, 243, 1.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Container(
                width: Get.width * 1,
                height: Get.height * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Date",
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 130, 130, 130)),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Obx(
                      () => TextFormField(
                        readOnly: true,
                        style: TextStyle(fontSize: 22, color: Colors.black),
                        decoration: InputDecoration(
                          hintText:
                              "${dateTimeController.dateTime.value.toLocal()}"
                                  .split(' ')[0],
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 209, 209, 209),
                              width: 1.0,
                            ),
                          ),
                        ),
                        onTap: () {
                          dateTimeController.selectDate(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Container(
                width: Get.width * 1,
                height: Get.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start Time",
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 130, 130, 130),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Obx(
                          () => SizedBox(
                            width: Get.width * 0.4,
                            child: TextFormField(
                              readOnly: true, // Make it non-editable
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                              decoration: InputDecoration(
                                hintText:
                                    "${dateTimeController.timeofDay.value.format(context)}", // Display selected time
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 209, 209, 209),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              onTap: () => dateTimeController.timePicker(
                                  context), // Trigger time picker on tap
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End Time",
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 130, 130, 130),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Obx(
                          () => SizedBox(
                            width: Get.width * 0.4,
                            child: TextFormField(
                              readOnly: true, // Make it non-editable
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                              decoration: InputDecoration(
                                hintText:
                                    "${dateTimeController.endTime.value.format(context).toString()}", // Placeholder for end time
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 209, 209, 209),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              onTap: () => dateTimeController.endtimePicker(
                                  context), // Trigger time picker on tap (for end time)
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                // color: Colors.lightBlue,
                width: Get.width * 1,
                height: Get.height * 0.11,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Board",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 130, 130, 130),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * 0.27,
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              // color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: borderColor,
                              )),
                          child: Center(
                            child: Text(
                              "Urgent",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width * 0.27,
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              // color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: borderColor,
                              )),
                          child: Center(
                            child: Text(
                              "Running",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width * 0.27,
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              // color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: borderColor,
                              )),
                          child: Center(
                            child: Text(
                              "Ongoing",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              InkWell(
                onTap: (){
                  Get.to(CreateTeamScreen());
                },
                child: Container(
                  // color: Colors.green,
                  width: Get.width * 1,
                  height: Get.height * 0.06,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: borderColor,
                          borderRadius: BorderRadius.circular(8)),
                      width: Get.width * 0.5,
                      height: Get.height * 0.06,
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
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

DateTimeController dateTimeController = Get.put(DateTimeController());
