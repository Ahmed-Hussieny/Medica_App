import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextInputComponent extends StatelessWidget {
  TextInputComponent({
    super.key,
    required this.holder,
    required this.hint,
    this.icon1,
    this.icon2,
    this.iconColor,
  });
  final String holder;
  final String hint;
  final IconData? icon1;
  final IconData? icon2;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: TextFormField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          labelText: holder,
          labelStyle: TextStyle(color: Color.fromARGB(255, 122, 122, 122)),
          hintText: "email",
          filled: true,
          fillColor: Color.fromARGB(255, 244, 241, 241),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: icon1 != null // Check if an icon is provided
              ? IconButton(
                  icon: Icon(
                    icon1,
                    color: iconColor,
                  ),
                  onPressed: () {},
                )
              : null,
          prefixIcon: icon2 != null // Check if an icon is provided
              ? IconButton(
                  icon: Icon(
                    icon2,
                    color: iconColor,
                  ),
                  onPressed: () {},
                )
              : null,
        ),
      ),
    );
  }
}
