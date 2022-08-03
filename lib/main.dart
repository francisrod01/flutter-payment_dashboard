import 'package:flutter/material.dart';
import 'package:payment_dashboard/components/dashboard.dart';
import 'package:payment_dashboard/components/sidebar.dart';
import 'package:payment_dashboard/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: bgColor,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              child: SideBar(),
            ),
            Expanded(
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
