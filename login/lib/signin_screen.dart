import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/reusable_widget/reusable_widget.dart';
import 'package:login/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body: Container(
        
        color: Colors.teal,
        child:SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.fromLTRB(40,30,40,30),
            child: Column(
              children: <Widget>[
                    logoWidget("thanks.png"),
                SizedBox(height: 30,),
                reusableTextField("Enter username", Icons.person_outline, false,_emailTextController),
                 SizedBox(height: 30,),
                 reusableTextField("Enter Passworrd", Icons.lock_outline, true,_emailTextController),
                            SizedBox(height:10,),
                signInSignUpButton(context, true, (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>HomeScreen()));
                }),
                signUpOption()
              ],
            ),
          ),
        ) ,
      ) , // decoration:BoxDecoration(gradient: LinearGradien(Colors,),
    );
  }
  Row signUpOption(){
    return Row(
          mainAxisAlignment:MainAxisAlignment.center,
      children: [
        const Text('Dont have an account ?'
        ,
        style: TextStyle(
          color: Colors.white70,
        ),) ,
        GestureDetector(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
          },
          child: const Text(' Sign UP',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
          ),
        )
      ],
    );
  }
}

