import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationModel extends ChangeNotifier {
  int donations = 0;

  int get getDonations => donations;

  void addToDonations(int amount) {
    donations = donations + amount;
    notifyListeners();
  }

  void removeDonation(int amount) {
    donations -= amount;
    notifyListeners();
  }
}
