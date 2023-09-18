import 'package:flutter/material.dart';
import 'package:medicen_app/TextComponent.dart';

// ignore: must_be_immutable
class CategoryComponent extends StatelessWidget {

  CategoryComponent({super.key, 
    required this.messagee,
   

  });
  String messagee;

  @override
  Widget build(BuildContext context) {

    return Container(
                  width: 130,
                  height: 60,
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff7BC1B7),
                    borderRadius: BorderRadius.circular(10)
                  ),
                
                  child: TextComponent(message:messagee,fontColor: Colors.white,fontSize: 18,fontWeight: FontWeight.w400,),
                );
          
  }
}
