import 'package:flutter/material.dart';
import 'package:medicen_app/TextComponent.dart';

// ignore: must_be_immutable
class DoctorComponent extends StatelessWidget {

  DoctorComponent({super.key, 
    required this.messagee,
    required this.bio,
    this.image = "images/doctor1.png",
    this.liked=false,

  });
  String messagee;
  String image;
  String bio;
  bool liked;

  @override
  Widget build(BuildContext context) {

    return             Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
               padding: EdgeInsets.only(left: 10,right: 10,top: 10),
              
               decoration: BoxDecoration(
                 color: Color.fromARGB(255, 222, 241, 238),
                 borderRadius: BorderRadius.circular(10)
        
               ),
               child: Row(
                children: [
                  Container(
                    child: Image.asset(image,width: 110,height: 130,),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                      Container(
                        width: 200,
                        child: Stack(
                          
                          children: [
                              TextComponent(message: messagee,fontColor: Colors.black,fontSize: 17,),
                            Positioned(
                              right: 10,
                              child: 
                            liked? Icon(Icons.favorite,color: Color(0xff0B8FAC),size: 18,)
                           : Icon(Icons.favorite_border,color: Color(0xff0B8FAC),size: 18,)
                           
                               )
                          ],
                        ),
                      ),
                      SizedBox(height:12),
                       Container(
                        width: 180,
                         child: TextComponent(message: bio,fontColor: Colors.grey,fontSize: 12,),
                       ), SizedBox(height:12),
                        Row(
                          
                        children: [
                         Container(
                          
                          width: 65,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0B8FAC),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text("Book",style: TextStyle(color: Colors.white),),
                         ),
                          SizedBox(width: 80,),
                          const Icon(Icons.star,color:Color(0xffF89603),size: 18,),  SizedBox(width: 5,),Text("5.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ]),
                  )
                ],
               ),
             );
  }
}
