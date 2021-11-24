import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food4cause/provider/donationModel.dart';
import 'package:food4cause/widgets/elevButton.dart';
import 'package:food4cause/widgets/options.dart';
import 'about.dart';
import 'foodPartner.dart';
import 'charityPartner.dart';
import 'communityPartner.dart';
import 'donate.dart';
import 'volunteer.dart';
import 'package:provider/provider.dart';

//Log out button where settings is
//FoodPartner needs donations
//Community Partner instead of donation page put request
void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => DonationModel(),
    child: MyApp(),
  ));
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //The buttons with gaps in between
          const Icon(Icons.local_restaurant, size: 60),
          const SizedBox(height: 20),

          Text("Food4Cause",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[700])),
          const SizedBox(height: 20),
          Container(
            height: 500,
            width: 280,
            child: ListView.builder(
                itemCount: option.length,
                itemBuilder: (BuildContext context, int index) {
                  return elevButton(
                      text: option[index]['name'],
                      color: option[index]['color'],
                      pageName: option[index]['page'],
                      context: context,
                      index: index);
                }),
          )
        ],
      ),
    ));
  }
}
