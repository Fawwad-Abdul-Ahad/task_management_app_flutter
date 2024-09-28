import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp, size: 24),
        title: const Text(
          "Chat",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: const BoxConstraints(
          maxHeight: 1000,
          minHeight: 200,
          maxWidth: 800,
          minWidth: 400,
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 113, 113, 113)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 209, 209, 209),
                        width: 1.0,
                      ))),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
                // color: Colors.lightBlue,
                height: Get.height * 0.08,
                width: Get.width * 1,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/user4  .png",
                        scale: 0.2,
                      ),
                    ),
                    title: const Text(
                      "Jenny Alxinder",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      "Active Now",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 113, 113, 113)),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                    ),
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Divider(
              color: Color.fromARGB(255, 204, 204, 204),// Color of the line
              thickness: 1, // Thickness of the line
              indent: 20, // Empty space to the leading edge of the divider.
              endIndent: 20, // Empty space to the trailing edge of the divider.
            ),

            Container(
                // color: Colors.lightBlue,
                height: Get.height * 0.08,
                width: Get.width * 1,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/user1.png",
                        scale: 0.2,
                      ),
                    ),
                    title: const Text(
                      "Jenny Alxinder",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      "Active Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 113, 113)),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                    ),
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Divider(
              color: Color.fromARGB(255, 204, 204, 204), // Color of the line
              thickness: 1, // Thickness of the line
              indent: 20, // Empty space to the leading edge of the divider.
              endIndent: 20, // Empty space to the trailing edge of the divider.
            ),Container(
                // color: Colors.lightBlue,
                height: Get.height * 0.08,
                width: Get.width * 1,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/user2.png",
                        scale: 0.2,
                      ),
                    ),
                    title: const Text(
                      "Jenny Alxinder",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      "Active Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 113, 113)),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                    ),
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Divider(
              color: Color.fromARGB(255, 204, 204, 204), // Color of the line
              thickness: 1, // Thickness of the line
              indent: 20, // Empty space to the leading edge of the divider.
              endIndent: 20, // Empty space to the trailing edge of the divider.
            ),Container(
                // color: Colors.lightBlue,
                height: Get.height * 0.08,
                width: Get.width * 1,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/user4.png",
                        scale: 0.2,
                      ),
                    ),
                    title: const Text(
                      "Jenny Alxinder",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      "Active Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 113, 113)),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                    ),
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Divider(
              color: Color.fromARGB(255, 204, 204, 204), // Color of the line
              thickness: 1, // Thickness of the line
              indent: 20, // Empty space to the leading edge of the divider.
              endIndent: 20, // Empty space to the trailing edge of the divider.
            ),Container(
                // color: Colors.lightBlue,
                height: Get.height * 0.08,
                width: Get.width * 1,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/user3.png",
                        scale: 0.2,
                      ),
                    ),
                    title: const Text(
                      "Jenny Alxinder",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      "Active Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 113, 113)),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                    ),
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Divider(
              color: Color.fromARGB(255, 204, 204, 204), // Color of the line
              thickness: 1, // Thickness of the line
              indent: 20, // Empty space to the leading edge of the divider.
              endIndent: 20, // Empty space to the trailing edge of the divider.
            ),
          ],
        ),
      ),
    );
  }
}
