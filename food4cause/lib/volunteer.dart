import 'package:flutter/material.dart';
import 'package:food4cause/provider/user_model.dart';
import 'package:food4cause/provider/volunteerProvider.dart';
import 'package:food4cause/widgets/drawerVolunteer.dart';
import 'package:food4cause/widgets/make_request.dart';
import 'package:food4cause/widgets/signIn.dart';
import 'package:food4cause/widgets/volunteer_tab.dart';
import 'package:provider/provider.dart';

class Volunteer extends StatelessWidget {
  final int index;
  const Volunteer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Provider.of<VolunteerProvider>(context, listen: false).user.signIn) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
        ),
        drawer: drawerVolunteer(),
      );
    }
    return SignIn(index: index);
  }
}
