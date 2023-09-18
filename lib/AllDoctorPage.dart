import 'package:flutter/material.dart';
import 'package:medicen_app/DoctorComponent.dart';
import 'package:medicen_app/TextComponent.dart';
import 'package:medicen_app/TextInputComponent.dart';

class AllDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                        Navigator.of(context).pop(
                          );
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  TextComponent(
                    message: "All Doctors",
                    fontColor: Color(0xff0B8FAC),
                    fontSize: 25,
                    fontFamily: "Lexend",
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: TextInputComponent(
                  holder: "Search a Doctor",
                  hint: "Search",
                  icon2: Icons.search,
                  icon1: Icons.keyboard_voice_outlined,
                )),
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
              liked: true,
            ),
            DoctorComponent(
              image: "images/doctor3.png",
              messagee: "Dr.Udara",
              bio:
                  "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac mattis.",
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
    );
  }
}
