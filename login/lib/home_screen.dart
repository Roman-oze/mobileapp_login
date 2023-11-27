import 'package:flutter/material.dart';
import 'package:login/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" DIU Student Id Card"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Image.network('assets/logo.png'),
                  SizedBox(
                    height: 10,
                  ),
                      Image.network('assets/dp - Copy.jpg',
                      height:200,
                        width: 200,
                      ),

                  Divider(
                    height: 50.0,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(" Full Name : "),
                      ),
                      Container(
                        child: Text("Roman Oze"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Student ID : "),
                      ),
                      Container(
                        child: Text(" 211-51-043"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(" Blood Group : "),
                      ),
                      Container(
                        child: Text(" B+"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Department :"),
                      ),
                      Container(
                        child:
                            Text(" Information Technology & Management (ITM)"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5.0,
                        ),
                        // Image.network(
                        //     'assets/diulogo.jpeg'
                        // ),
                      ]),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.white,
                          child: ElevatedButton(
                            child: Icon(
                              Icons.logout,
                              size: 30,
                              color: Colors.black,

                            ),

                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                          ),
                        ),
                      ]
                    )
                   ]
                )
            )
        )
    );
  }
}
// Center(
// child: ElevatedButton(
// child: Text('Logout',),
// onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder:(context) => SignInScreen()));
// },
// ),
// ),
