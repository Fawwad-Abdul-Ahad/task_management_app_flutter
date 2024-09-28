
import 'package:flutter/material.dart';
import 'package:task_management_app/model_view_controller/fourth_screen/fourth_screen.dart';
import 'package:task_management_app/model_view_controller/siginin_screen/signin_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
            maxHeight: 800, minHeight: 200, maxWidth: 600, minWidth: 200),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/Circle.png",
                  height: 316,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                      ), // Custom paddin
                      child: Image.asset(
                        "assets/images/imagefive.png",
                        width: 310,
                        height: 300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: Image.asset(
                    "assets/images/Imagenine.png",
                    width: 125,
                    height: 125,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 60, right: 90), // Custom paddin
                      child: Image.asset(
                        "assets/images/Imageeleven.png",
                        width: 125,
                        height: 125,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 4),
              child: Row(
                children: [
                  Text("Task Management",
                      style:
                          TextStyle(color: Color.fromARGB(255, 108, 32, 231)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 3),
              child: Row(
                children: [
                  Text(
                    "Work more",
                    style: TextStyle(fontSize: 27),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("Structured ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 108, 32, 231),
                              fontSize: 27))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "and",
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Organized",
                    style: TextStyle(fontSize: 27),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 108, 32, 231),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SigninPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/imageten.png",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 85.0, left: 50.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FourthScreen(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
