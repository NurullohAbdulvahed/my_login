import 'package:flutter/material.dart';
import 'package:my_login/pages/first_page.dart';
import 'package:my_login/pages/fourth_page.dart';
import 'package:my_login/pages/home_page.dart';
import 'package:my_login/pages/login_page.dart';
import 'package:my_login/pages/payment_page.dart';
import 'package:my_login/pages/second_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
        routes:{
          HomePage.id: (context) => HomePage(),
          FirstPage.id: (context)=> FirstPage(),
          SecondPage.id: (context) => SecondPage(),
          FourthPage.id: (context) => FourthPage(),
          PaymentPage.id: (context) => PaymentPage(),
          FourthPage.id: (context) => FourthPage(),
      }

    );
  }
}
