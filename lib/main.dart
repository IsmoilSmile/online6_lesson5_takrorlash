import 'package:flutter/material.dart';
import 'package:online6_lesson5_takrorlash/pages/home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Home_Page()
    );
  }
}
