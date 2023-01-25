import 'package:flutter/material.dart';
import 'package:palenda/components/user_button.dart';
import 'package:palenda/components/user_textfiled.dart';
import 'package:palenda/classes/language_constants.dart';

class RegisterPage extends StatelessWidget{
   RegisterPage({super.key});
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final tinController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();


  @override 
  Widget build(BuildContext context){
    return 
    
    Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView( child:SafeArea(
        child: Center(child: 
        Column(
          children:  [
            const SizedBox(height: 50,),
            const Icon(Icons.people_alt_rounded,
             size: 100,),
             const SizedBox(height: 50,),
            Text('Create Account',
            style: TextStyle(
              color: Colors.grey.shade900,
            ),
            ),
            const SizedBox(height: 25,),
            UserTextField(
              controller: firstnameController,
              hinText: 'Enter your firstname', 
              obscureText: false,
              ),

            const SizedBox(height: 25,),
            UserTextField(
              controller: lastnameController,
              hinText: 'Enter your lastname', 
              obscureText: false,
              ),

               const SizedBox(height: 25,),
            UserTextField(
              controller: usernameController,
              hinText: 'Enter your username', 
              obscureText: false,
              ),

               const SizedBox(height: 25,),
            UserTextField(
              controller: emailController,
              hinText: 'Enter your email', 
              obscureText: false,
              ),

               const SizedBox(height: 25,),
            UserTextField(
              controller: tinController,
              hinText: 'Enter your Tin', 
              obscureText: false,
              ),

               const SizedBox(height: 25,),
            UserTextField(
              controller: phoneController,
              hinText: 'Enter your Phone Number', 
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
            UserButton(onTap: ()=>{
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => RegisterPage())
            )
            }),
            const SizedBox(height: 25,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Not A Member ?', style: TextStyle(color: Colors.grey[600]),),
            const SizedBox(width: 5,),
            const Text('Register', style: TextStyle(color: Colors.blue),),
            
            ],
            ),),
            
      ],
      ),
      ),
      ),)
    );
  }

  
}