import 'package:chat_app/Theme/my_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.validator,
      required this.controller,
      required this.keyboardType,
      this.isPassword = false,
      required this.label
      });

  String? Function(String?) validator;
  TextEditingController controller;
  TextInputType keyboardType;
  bool isPassword;
  String  label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        style: TextStyle(
          color:MyTheme.black,   // هنا لون الكتابة
          fontSize: 18,
        ),

      decoration: InputDecoration(


        label:Text( label,
         style: TextStyle(
           fontSize: 20
         ),
        )
      ),
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
      ),
    );
  }
}
