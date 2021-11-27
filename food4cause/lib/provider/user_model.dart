import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food4cause/models/users.dart';
import 'package:food4cause/widgets/signIn.dart';

class UserModel extends ChangeNotifier {
  User user = User("", "", false);

  // String emailAdd = "";
  // String password = "";
  // bool signIn = false;
  User get getUser => user;
  // String get getEmailAdd => emailAdd;
  // String get getPassword => password;
  // bool get getSignIn => signIn;

  void addToUser(User newUser) {
    user = newUser;
    notifyListeners();
  }
}
