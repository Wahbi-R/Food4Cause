import 'package:flutter/material.dart';
import 'package:food4cause/provider/donationModel.dart';
import 'package:food4cause/widgets/barChartSample.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';

class CreditCard extends StatefulWidget {
  CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  final nameController = TextEditingController();
  final cardNumCon = TextEditingController();
  final expiryCon = TextEditingController();
  final secCon = TextEditingController();
  final zipCon = TextEditingController();
  DateTime? dataTime;
  String newData = "";

  bool hasNumName = false;
  bool cardNumAllNum = true;
  Widget build(BuildContext context) {
    void checkIfNumber(TextEditingController nameController) {
      if (!nameController.text.contains(RegExp(r'[a-zA-Z]+'))) {
        print("hasNUMBERS");
        setState(() {
          hasNumName = true;
        });
      } else {
        setState(() {
          hasNumName = false;
        });
      }
    }

    void dispose() {
      nameController.dispose();
      cardNumCon.dispose();
      super.dispose();
    }

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
                onSubmitted: (val) {
                  checkIfNumber(nameController);
                },
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    fontSize: 10,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  errorText: hasNumName ? "Letters only " : null,
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
                onSubmitted: (_) {
                  if (cardNumCon.text.contains(RegExp(r'[a-zA-Z]+'))) {
                    print("hasLetters");
                    setState(() {
                      cardNumAllNum = false;
                    });
                  } else {
                    setState(() {
                      cardNumAllNum = true;
                    });
                  }
                },
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontSize: 10,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    filled: true,
                    fillColor: Colors.teal[50],
                    hintText: "4242 |",
                    border: InputBorder.none,
                    errorText: cardNumAllNum ? null : "Only Numberrs"),
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
              Row(
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
                        onTap: () async {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          dataTime = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2055),
                          );
                          setState(() {
                            newData = DateFormat('MM-yyyy').format(dataTime!);
                          });
                        },
                        decoration: InputDecoration(
                          hintText: newData.isEmpty ? "MM/YYYY" : newData,
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6))),
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
              ),
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
                    controller: zipCon,
                    onSubmitted: (_) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              TotalDonWidget(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
                    height: 200, width: 350, child: const BarChartSample1()),
              ),
              // Container(
              //     height: 200,
              //     width: 400,
              //     child: BarChartWidget(Types.generateData())),
            ],
          ),
        ],
      ),
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
            width: 301,
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
