import 'package:flutter/material.dart';
// import 'package:my_app/signin_page.dart';
// import 'package:my_app/third_screen.dart';
import 'package:task_management_app/model_view_controller/siginin_screen/signin_screen.dart';
import 'package:task_management_app/model_view_controller/third_screen/third_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/Circle.png",
                height: 316,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20, right: 20), // Custom paddin
                    child: Image.asset(
                      "assets/images/Imagefour.png",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 90, left: 20),
                child: Image.asset(
                  "assets/images/Imagetwo.png",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 160, right: 20), // Custom paddin
                    child: Image.asset(
                      "assets/images/Imagethree.png",
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
                    style: TextStyle(color: Color.fromARGB(255, 108, 32, 231)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 3),
            child: Row(
              children: [
                Text(
                  "Let's create a",
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
                    Text("space ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 108, 32, 231),
                            fontSize: 27))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "for your",
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
                  "workflows",
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
                Row(
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
                                builder: (context) => ThirdScreen(),
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
    );
  }
}