import 'package:flutter/material.dart';
import 'package:palenda/components/loginuser_button.dart';
import 'package:palenda/components/user_textfiled.dart';

import 'package:palenda/classes/language_constants.dart';
import 'package:palenda/pages/register_page.dart';
class LoginPage extends StatelessWidget{
   LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(child: 
        Column(
          children:  [
            const SizedBox(height: 50,),
            const Icon(Icons.lock,
             size: 100,),
             const SizedBox(height: 50,),
            Text('Welcome back !',
            style: TextStyle(
              color: Colors.grey.shade900,
            ),
            ),
            const SizedBox(height: 25,),
            UserTextField(
              controller: usernameController,
              hinText: 'Enter your username', 
              obscureText: false,
              ),

            const SizedBox(height: 10,),
            UserTextField(
              controller: passwordController,
              hinText: 'Enter your password ',
              obscureText: true,
            ),
            const SizedBox(height: 10,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
            Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text('Forgot Password', style: TextStyle(color: Colors.grey[600]),),
            ],
            ),),
          
            const SizedBox(height: 25,),
            UserButton(onTap: signUserIn),
            const SizedBox(height: 25,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Not yet a Member ?', style: TextStyle(color: Colors.grey[600]),),
            const SizedBox(width: 5,),

            GestureDetector(
                                    onTap: () =>{
                                  // Navigator.pop(context)
                                   Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => RegisterPage()
                                  ))


                                    },
                                    child:  const Text('Register', style: TextStyle(color: Colors.blue),),
            )
                                    // Text(
                                    // translation(context).loginNow,
                                    // style: TextStyle(
                                    //     color: Color(0xff5771F9)
                                    // ),
                                    // ),
           
            
            ],
            ),),
            
      ],
      ),
      ),
      ),
    );
  }

  void signUserIn() {
  }
}