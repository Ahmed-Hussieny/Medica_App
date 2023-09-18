import 'package:flutter/material.dart';
import 'package:medicen_app/AllDoctorPage.dart';
import 'package:medicen_app/CategoryComponent.dart';
import 'package:medicen_app/DoctorComponent.dart';
import 'package:medicen_app/TextComponent.dart';
import 'package:medicen_app/TextInputComponent.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/ME.jpeg")),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextComponent(
                        message: "Hi,Welcome Back,",
                        fontColor: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextComponent(
                        message: "John Doe William",
                        fontColor: Colors.black,
                        fontSize: 18,
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(children: [
                        const Icon(Icons.notifications_none),
                        Positioned(
                            right: 0,
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 200),
                                )))
                      ]))
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextInputComponent(
                    holder: "Search a Doctor",
                    hint: "Search",
                    icon2: Icons.search,
                    icon1: Icons.keyboard_voice_outlined,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                padding: const EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff0B8FAC),
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(children: [
                  Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextComponent(
                                message: "Medical Center",
                                fontColor: Colors.white,
                                fontSize: 26,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextComponent(
                                message:
                                    "Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                                fontColor: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )
                            ],
                          ),
                        ),
                      ]),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: Container(
                      // : EdgeInsets.only(right: -10),
                      child: Image.asset(
                        "images/1.png",
                        width: 200,
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
                child: Row(
                  children: [
                    TextComponent(
                      message: "Categories",
                      fontColor: Colors.black,
                      fontSize: 20,
                    ),
                    Spacer(),
                    TextComponent(
                      message: "See All",
                      fontColor: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryComponent(
                        messagee: "Denteeth",
                      ),
                      CategoryComponent(
                        messagee: "Theripist",
                      ),
                      CategoryComponent(
                        messagee: "Surgeon",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Row(
                  children: [
                    TextComponent(
                      message: "All Doctors",
                      fontColor: Colors.black,
                      fontSize: 20,
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AllDoctorPage()));
                        },
                        child: TextComponent(
                          message: "See All",
                          fontColor: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
              ),
              DoctorComponent(
                image: "images/doctor1.png",
                messagee: "Dr.Pwan",
                bio:
                    "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
              ),
              DoctorComponent(
                image: "images/doctor2.png",
                messagee: "Dr.Wanitha",
                bio:
                    "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac mattis.",
              ),
              DoctorComponent(
                image: "images/doctor3.png",
                messagee: "Dr.Udara",
                bio:
                    "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac mattis.",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xff0B8FAC),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.home_outlined)),
            label: '', 
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.black,
            ),
            label: '', 
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, color: Colors.black),
            label: '', 
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_4_rounded, color: Colors.black),
            label: '', 
          ),
        ],
      ),
    );
  }
}
