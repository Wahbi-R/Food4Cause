import 'package:flutter/cupertino.dart';
import 'package:food4cause/models/accounts.dart';
import 'package:food4cause/models/items.dart';
import 'package:food4cause/models/users.dart';
import 'package:food4cause/widgets/signIn.dart';

class UserModel extends ChangeNotifier {
  User user = User("", "", "", false);
  List<User> listOfUsers = [
    User("brand@gmail.com", "pass", "Brandon Deoram ", false)
  ];
  List<String> emails = ["brand@gmail.com"];
  List<Account> accounts = [
    Account(User("brand@gmail.com", "pass", "Brandon Deoram", false),
        [Item("Chicken", 2.0, "lbs", "", "", "")])
  ];
  String username = "";

  User get getUser => user;
  List<Account> get getAccounts => accounts;
  List<Item> get getItems => items;
  String get getUserName => username;

  void addUserName(String name) {
    username = name;
    int index = getIndex;
    accounts[index].user.username = name;
    notifyListeners();
  }

  void signOut() {
    int index = getIndex;
    user.signIn = false;
    accounts[index].user.signIn = false;
    notifyListeners();
  }

  void addToUser(User newUser) {
    user = newUser;
    emails.add(newUser.emailAddress);
    accounts.add(Account(newUser, []));
    // print(accounts[1].user.emailAddress);
    notifyListeners();
  }

  void signIn(User oldUser) {
    user = oldUser;
    print(user.emailAddress);
    notifyListeners();
  }

  void addToItems(Item item) {
    int index = emails.indexOf(user.emailAddress);
    print("ACCOUNT:${accounts[index].user.emailAddress}");
    print("Current:${user.emailAddress}");
    if (accounts[index].user.emailAddress == user.emailAddress) {
      accounts[index].items.add(item);
    } else {
      print("SOMETHING WRONG");
    }
    notifyListeners();
  }

  void printItems() {
    int index = listOfUsers.indexOf(user);
    print(accounts[index].items);
  }

  int get getIndex {
    print("Current User: ${user.emailAddress}");
    return emails.indexOf(user.emailAddress);
  }
}
