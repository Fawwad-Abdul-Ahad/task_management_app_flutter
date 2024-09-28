import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/constants/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp, size: 24),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints:const BoxConstraints(
          minHeight: 200,
          maxHeight: 800,
          minWidth: 200,
          maxWidth: 800,

        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width:Get.width*1,
              height: Get.height*0.3,
              // color: Colors.red,
              child: Container(
                width:Get.width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.asset("assets/images/profile_pic.png",fit: BoxFit.cover,scale: 0.1,),
                  ),
                  SizedBox(height: Get.height*0.01,),
                  Text("Alvart Ainstain",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                  // SizedBox(height: Get.height*0.005,),
                  Text("@alvart.ainstain",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: greyColor),),  
                  SizedBox(height: Get.height*0.01,),
                  InkWell(
                    child: Container(
                      width: Get.width*0.2,
                      height: Get.height*0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: borderColor,
                        )
                      ),
                      child: Center(child: Text("Edit")),
                    ),
                  )
                ],
                ),
              ),
            ),
            Container(
              width: Get.width*1,
              height: Get.height*0.12,
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: Get.width*0.3,
                    height: Get.height*1,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Icon(Icons.watch_later_outlined,size: 30,),
                        Text("5",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        Text("On Going",style: TextStyle(fontSize: 16,color: greyColor),)
                      ],
                    ),
                  ),
                  // Divider(
                  //   height: 40,
                  //   color: Colors.yellow,
                  //   indent: 21,
                  // ),
                  Container(
                    width: Get.width*0.3,
                    height: Get.height*1,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Icon(Icons.watch_later_outlined,size: 30,),
                        Text("5",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        Text("Total Complete",style: TextStyle(fontSize: 16,color: greyColor),)
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: Get.height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color.fromARGB(255, 210, 210, 210), width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Projects",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
             SizedBox(height: Get.height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:  const Color.fromARGB(255, 210, 210, 210), width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Join a Team",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ), SizedBox(height: Get.height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:  const Color.fromARGB(255, 210, 210, 210), width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Settings",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ), SizedBox(height: Get.height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:  const Color.fromARGB(255, 210, 210, 210), width: 2)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Task",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    const Icon(Icons.arrow_forward_ios),
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