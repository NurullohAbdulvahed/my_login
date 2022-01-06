import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_login/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "homepage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 2,
        ),
        body: Container(
          color: Colors.purpleAccent,
          child: Column(
            children: [
              Expanded(
                  flex:3,child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       Container(
                         child: Icon(
                           Icons.account_circle_rounded,size: 80,
                         ),

                       ),
                       Container(
                         child: Text("Login",style: TextStyle(color: Colors.green,fontSize: 30),),
                       )
                     ],
                  ),
                ),


              ),

              Expanded(flex:4,child: Container(
                padding: EdgeInsets.only(bottom: 90),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))

                   ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: y/25),
                              height: MediaQuery.of(context).size.height/12,
                              width: MediaQuery.of(context).size.width/1.2,
                              decoration: BoxDecoration(
                                border: Border.all(width: 3,color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.email,color: Colors.purple.shade600,),
                                  ),
                                 SizedBox(width: 10,),
                                  Container(
                                    child: Text("abduvahed12@gmail.com"),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 25),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: y/30),
                              height: MediaQuery.of(context).size.height/12,
                              width: MediaQuery.of(context).size.width/1.2,
                              decoration: BoxDecoration(
                                border: Border.all(width: 3,color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.https,color: Colors.purple.shade600,),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    child: Text("*********"),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: (){
                                  Navigator.pushNamed(context, HomePage.id);

                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: y/30),
                                height: MediaQuery.of(context).size.height/12,
                                width: MediaQuery.of(context).size.width/1.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.purple.shade600,
                                ),
                                child: Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, HomePage.id);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 25),),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.arrow_forward,color: Colors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                  )
                ,),
            ],
          ),
        ),
      ),),
    );
  }
}
