import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  final int index;
  const AboutUs({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: new EdgeInsets.only(top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("About us\n",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('''This is our about page. Here we will
outline our goals and reasons for this
project. We plan to include some tabs;
who we are, financial accountability, etc
As well, a graphical mock timeline.\n'''),
                    Text('''For this mockup, we don't have much
done about our about page but it will 
look better formatted and more user 
friendly by the time of our final project
submission date.\n'''),
                    Text(
                        "This page will have a dark blue theme in\nits widget/photo layouts"),
                  ],
                ))));
  }
}
