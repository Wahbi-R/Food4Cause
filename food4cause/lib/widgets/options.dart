import 'package:flutter/material.dart';
import 'package:food4cause/about.dart';
import 'package:food4cause/charityPartner.dart';
import 'package:food4cause/communitypartner.dart';
import 'package:food4cause/donate.dart';
import 'package:food4cause/foodPartner.dart';
import 'package:food4cause/volunteer.dart';

List<Map> option = [
  {"name": "Donate", "color": Colors.red[400], "page": Donate(index: 0)},
  {
    "name": "Food Partner",
    "color": Colors.orangeAccent[700],
    "page": FoodPartner(index: 1)
  },
  {
    "name": "Community Partner",
    "color": Colors.yellow[500],
    "page": CommunityPartner(index: 2)
  },
  {
    "name": "Volunteer",
    "color": Colors.green[300],
    "page": Volunteer(index: 3)
  },
  {
    "name": "Charity Partner",
    "color": Colors.blue[300],
    "page": CharityPartner(index: 4)
  },
  {"name": "About Us", "color": Colors.blue[900], "page": AboutUs(index: 5)},
];
