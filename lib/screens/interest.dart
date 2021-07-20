import 'package:compounding/extras/extensioon.dart';
import 'package:compounding/widgets/CompondField.dart';
import 'package:compounding/widgets/calculatioon_button.dart';
import 'package:compounding/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Interest extends StatelessWidget {
  var interest = TextEditingController();
  var month = TextEditingController();
  var year = TextEditingController();
  var balance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Calculate Interest"),
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      (mediaQueryHeight(context) / 70).addHSpace(),
                      CompoundindField(
                        data: balance,
                        lable: "Balance",
                      ),
                      (mediaQueryHeight(context) / 70).addHSpace(),
                      CompoundindField(data: interest, lable: "Interest"),
                      (mediaQueryHeight(context) / 70).addHSpace(),
                      CompoundindField(
                        data: month,
                        lable: "Month",
                      ),
                      (mediaQueryHeight(context) / 70).addHSpace(),
                      CompoundindField(data: year, lable: "Year"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: CalculateButton(
                      lable: "CALCULATE",
                      color: Colors.redAccent,
                    ),
                    onTap: () {
                      Get.to(SimpleInterest(
                        balance: (double.parse(balance.text)),
                        time: (double.parse(month.text)),
                        rate: (double.parse(interest.text)),
                        total: ((double.parse(balance.text))+(((double.parse(balance.text)) *
                            (double.parse(interest.text)) *
                            (double.parse(month.text))) /
                            100)),
                      ));
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class SimpleInterest extends StatelessWidget {
  SimpleInterest(
      {required this.balance, required this.time, required this.rate, required this.total});

  double balance;
  double time;
  double rate;


  double total;


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InterestWithChart(balance: balance,time: time,total: total, rate: rate,),
            ),


          ],
        ),
      ),
    );
  }
}
