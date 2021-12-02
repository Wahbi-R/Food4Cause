// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food4cause/provider/user_model.dart';
import 'package:food4cause/widgets/drawerWidget.dart';
import 'package:food4cause/widgets/make_donation.dart';
import 'package:food4cause/widgets/signIn.dart';
import 'package:provider/provider.dart';

class FoodPartner extends StatelessWidget {
  final int index;

  FoodPartner({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Provider.of<UserModel>(context, listen: false).user.signIn) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
        ),
        drawer: drawerWidget(),
      );
    }
    return SignIn(index: index);
  }
}
