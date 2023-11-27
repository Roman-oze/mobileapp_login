// import 'package:firebase_signin/reusable_widgets/reusable_widget.dart;
import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';

import 'reusable_widget/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title:Text('Sign UP',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery
                .of(context)
                .size
                .height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[

                SizedBox(height: 20,),
                reusableTextField(
                    "Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(height: 20,),
                reusableTextField("Enter Email",Icons.person_outline, true,
                    _emailTextController),
                SizedBox(height: 30,),
                reusableTextField("Enter Passworrd", Icons.lock_outline, true,
                    _emailTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, false, () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));
                })
              ],
            ),
          ),
        ),
      ), // decoration:BoxDecoration(gradient: LinearGradien(Colors,),                                                           
    );
  }
  }


                                                                                                                              
                                                                                                                                
                                                                                                                                
