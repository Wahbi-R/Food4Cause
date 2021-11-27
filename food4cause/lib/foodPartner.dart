// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food4cause/provider/user_model.dart';
import 'package:food4cause/widgets/signIn.dart';
import 'package:provider/provider.dart';

class FoodPartner extends StatelessWidget {
  final int index;

  FoodPartner({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Provider.of<UserModel>(context, listen: false).user.signIn) {
      return Container(
        child: Text("Sign IN"),
      );
    }
    return SignIn(index: index);
  }
}
