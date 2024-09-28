import 'package:flutter/material.dart';
// import 'package:my_app/signin_page.dart  ';
import 'package:task_management_app/model_view_controller/siginin_screen/signin_screen.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

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
                        "assets/images/Imagesix.png",
                        width: 310,
                        height: 300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: Image.asset(
                    "assets/images/Imagethirteen.png",
                    width: 125,
                    height: 125,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 130, right: 85), // Custom paddin
                      child: Image.asset(
                        "assets/images/Imagetwelve.png",
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
                    "Manage your",
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
                      Text("Tasks ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 108, 32, 231),
                              fontSize: 27))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "quickly for",
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
                    "Results",
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
                                  builder: (context) => SigninPage(),
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