import 'package:flutter/material.dart';
import 'package:login/signin_screen.dart';



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'flutter',
      theme: ThemeData(
        primaryColor:Colors.deepOrangeAccent,
      ),
       home: const SignInScreen(),
     );
   }
}