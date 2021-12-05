import 'package:flutter/material.dart';
import 'package:food4cause/models/communities.dart';

class CommunityModel extends ChangeNotifier {
  List<Communities> commList = [
    Communities("The Jeremy Com", "12 IDK Street"),
    Communities("The Brandon Com", "13 IDK Street"),
    Communities("The Wabz Com", "14 IDK Street"),
    Communities("Fahads", "15 IDK Street"),
  ];

  void addComm(Communities comm) {
    commList.add(comm);
    notifyListeners();
  }
}
