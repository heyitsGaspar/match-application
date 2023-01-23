import 'package:flutter/material.dart';
import 'package:match_app/pages/list_view_page.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      title: 'Soccer Gasphi',
      //home:  GridViewPage()
      home: ListViewPage(),
    );
  }
}






