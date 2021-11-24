import 'package:flutter/material.dart';
import 'package:food4cause/provider/donationModel.dart';
import 'package:provider/provider.dart';

class CreditCard extends StatelessWidget {
  CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final cardNumCon = TextEditingController();
    final expiryCon = TextEditingController();
    final secCon = TextEditingController();

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
            child: Text("Name on card "),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              width: 300,
              height: 45,
              child: TextField(
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                controller: nameController,
                onSubmitted: (_) {},
                decoration: InputDecoration(
                  hintText: "John Wave",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
            child: Text("Card Number "),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.all(Radius.circular(3))),
              width: 300,
              height: 45,
              child: TextField(
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                controller: cardNumCon,
                onSubmitted: (_) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.teal[50],
                  hintText: "4242 |",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                    child: Text("Expiry Date "),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 10, 20, 5),
                    child: Text("Security code"),
                  ),
                ],
              ),
              expireyDataCode(expiryCon, secCon),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                child: Text("ZIP/Postal code"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  width: 300,
                  height: 45,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    controller: nameController,
                    onSubmitted: (_) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              TotalDonWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Row expireyDataCode(
      TextEditingController expiryCon, TextEditingController secCon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            width: 150,
            height: 45,
            child: TextField(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              controller: expiryCon,
              onSubmitted: (_) {},
              decoration: InputDecoration(
                hintText: "MM/YY",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            width: 150,
            height: 45,
            child: TextField(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              controller: secCon,
              onSubmitted: (_) {},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TotalDonWidget extends StatelessWidget {
  const TotalDonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: FlatButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.teal[200],
                borderRadius: BorderRadius.all(Radius.circular(6))),
            height: 40,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                Consumer<DonationModel>(
                  builder: (context, donation, _) {
                    print("Donation Consumer:${donation.getDonations}");
                    return Text(
                      "Pay \$${donation.getDonations.toDouble()}",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
