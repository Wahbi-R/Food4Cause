import 'package:flutter/material.dart';

class Donate extends StatelessWidget {
  final int index;
  const Donate({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 260, 0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.grey[700],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 15),
                    ),
                    Text(
                      "johndoe@company.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700],
                          letterSpacing: 1.5),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(
                Icons.home,
                color: Colors.grey[400],
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(Icons.card_giftcard, color: Colors.grey[400]),
              title: Text('Donations'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading:
                  Icon(Icons.person_pin_circle_sharp, color: Colors.grey[400]),
              title: Text(
                'Transport',
              ),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(Icons.favorite, color: Colors.grey[400]),
              title: Text('Communities'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
