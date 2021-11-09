// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food4cause/widgets/signIn.dart';

class FoodPartner extends StatelessWidget {
  final int index;

  FoodPartner({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignIn(index: index);
  }
}
