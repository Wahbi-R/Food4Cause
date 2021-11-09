import 'package:flutter/material.dart';

class elevButton extends StatelessWidget {
  final String text;
  final Color color;
  final Widget pageName;
  final BuildContext context;
  final int index;

  const elevButton({
    Key? key,
    required this.text,
    required this.color,
    required this.pageName,
    required this.context,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 380,
            height: 45,
            //adds dropshadow
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-3, 3),
                      spreadRadius: 1,
                      blurRadius: 2)
                ]),
            //Actual button
            child: ElevatedButton(
                onPressed: () {
                  openPage(pageName, context);
                },
                child: Text(text),
                style: ElevatedButton.styleFrom(primary: color, elevation: 0))),
        const SizedBox(height: 30),
      ],
    );
  }

  void openPage(page, context) {
    if (page == null) {
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
