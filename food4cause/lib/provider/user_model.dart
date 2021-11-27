import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food4cause/models/accounts.dart';
import 'package:food4cause/models/items.dart';
import 'package:food4cause/models/users.dart';
import 'package:food4cause/widgets/signIn.dart';

class UserModel extends ChangeNotifier {
  User user = User("", "", false);
  List<User> listOfUsers = [User("brand@gmail.com", "pass", false)];
  List<Item> items = [];
  List<Account> accounts = [
    Account(User("brand@gmail.com", "pass", false),
        [Item("Chicken", 2.0, "", "", "")])
  ];

  /*
  List<Accounts> accounts;
  List<Items> items;
  1. Sign Up 
  2. Community Partner
  3. Add there dontations
    - .addToItems(Item item1){
      both email match then add item to list 
      accounts

      Getting index of that account
      index = listOfUsers.indexOf(newUser);
      if(accounts.user.email==(current)userm.email){
          accounts[index].items.add(item1);
      }
      else{

      }
      items.add(item1)
    }
  4.If they sign out set items =[] in provider to 
  
  
  */

  User get getUser => user;
  List<Account> get getAccounts => accounts;
  List<Item> get getItems => items;

  void addToUser(User newUser) {
    user = newUser;
    listOfUsers.add(newUser);
    accounts.add(Account(newUser, []));
    print(accounts[1].user.emailAddress);
    notifyListeners();
  }
}
