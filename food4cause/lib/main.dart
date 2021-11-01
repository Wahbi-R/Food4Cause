import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'foodPartner.dart';
import 'charityPartner.dart';
import 'communityPartner.dart';
import 'donate.dart';
import 'volunteer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food4Cause',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Food4Cause'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        //Icon and buttons on main page
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.local_restaurant, size: 60),
          const SizedBox(height: 20),
          Text("Food4Cause",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[700])),
          const SizedBox(height: 20),
          elevButtons("Donate", Colors.red[400], Donate, context),
          const SizedBox(height: 30),
          elevButtons(
              "Food Partner", Colors.orangeAccent[700], FoodPartner, context),
          const SizedBox(height: 30),
          elevButtons("Community Partner", Colors.yellow[500], CommunityPartner,
              context),
          const SizedBox(height: 30),
          elevButtons("Volunteer", Colors.green[300], Volunteer, context),
          const SizedBox(height: 30),
          elevButtons(
              "Charity Partner", Colors.blue[300], CharityPartner, context),
          const SizedBox(height: 30),
          elevButtons("About Us", Colors.blue[900], AboutUs, context),
          const SizedBox(height: 30),
        ],
      ),
    ));
  }
}

void openPage(page, context) {
  if (page == null) {
    return;
  }
  Navigator.push(context, MaterialPageRoute(builder: (context) => page()));
}

Widget elevButtons(String text, color, pageName, context) => Container(
    width: 300,
    height: 40,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(5), boxShadow: const [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(-3, 3),
          spreadRadius: 1,
          blurRadius: 2)
    ]),
    child: ElevatedButton(
        onPressed: () {
          openPage(pageName, context);
        },
        child: Text(text),
        style: ElevatedButton.styleFrom(primary: color, elevation: 0)));
