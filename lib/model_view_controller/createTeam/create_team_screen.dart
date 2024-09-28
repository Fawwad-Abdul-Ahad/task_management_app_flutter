import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_management_app/constants/color.dart';
import 'package:task_management_app/model_view_controller/chatScreen/chat_screen.dart';

class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({super.key});

  @override
  State<CreateTeamScreen> createState() => _CreateTeamScreenState();
}

File? _image;
final picker = ImagePicker();
bool loading = false;

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  // Function to pick an image from the gallery
  Future getImageFromGallery() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print("No image selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp, size: 24),
        title: Text(
          "Create Team",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: const BoxConstraints(
          minHeight: 200,
          maxHeight: 800,
          minWidth: 200,
          maxWidth: double.infinity,
        ),
        width: Get.width * 1,
        height: Get.height * 1,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: Get.width * 1,
              height: Get.height * 0.2,
              // color: const Color.fromARGB(255, 193, 235, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100, // Adjust the width to fit the radius
                    height: 100, // Adjust the height to fit the radius
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: borderColor, // Set the border color to blue
                        width: 2.0, // Set the width of the border
                      ),
                    ),
                    child: InkWell(
                      onTap: getImageFromGallery,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: _image != null
                                    ? Image.file(_image!)
                                    : Image.asset(
                                        "assets/images/graphics.png")),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  const Text(
                    "Upload Logo file",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "Your logo will publish always",
                    style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 130, 130, 130)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              height: Get.height * 0.15,
              width: Get.width * 1,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Team Name",
                    style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 130, 130, 130)),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  TextFormField(
                    readOnly: true,
                    style: TextStyle(fontSize: 22, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Team Align",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 209, 209, 209),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: Get.height * 0.15,
              width: Get.width * 1,
              // color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            child: Image.asset('assets/images/user1.png',
                                scale: 0.1),
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
                            child: Image.asset('assets/images/user2.png',
                                scale: 0.1),
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
                            child: Image.asset('assets/images/user3.png',
                                scale: 0.1),
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
                            child: Image.asset('assets/images/user4.png',
                                scale: 0.1),
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
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width * 1,
              height: Get.height * 0.12,
              // color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Type",
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
                            "Private",
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
                            "Public",
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
                            "Secret",
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
              height: Get.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Get.to(const ChatScreen());
              },
              child: Container(
                // color: Colors.green,
                width: Get.width * 0.6,
                height: Get.height * 0.06,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: BorderRadius.circular(10)),
                    width: Get.width * 0.6,
                    height: Get.height * 0.1,
                    child: Center(
                      child: Text(
                        "Create Team",
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
    );
  }
}
