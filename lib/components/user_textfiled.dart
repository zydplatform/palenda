import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget{
  final controller;
  final String hinText;
  final bool obscureText;

  const UserTextField({
    super.key,
    this.controller,
    required this.hinText,
    required this.obscureText

    });
  @override
  Widget build(BuildContext context){
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
            TextField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(borderSide: 
                BorderSide(color: Colors.white),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: hinText,
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
              
            ),
            );
  }

}