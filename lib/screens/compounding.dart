import 'package:compounding/extras/extensioon.dart';
import 'package:compounding/models/interest_model.dart';
import 'package:compounding/widgets/CompondField.dart';
import 'package:compounding/widgets/calculatioon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyApp extends StatelessWidget {
  var interest = TextEditingController();
  var month = TextEditingController();
  var year = TextEditingController();
  var balance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Get.to(CompoundingInterst(
                          p: (double.parse(balance.text)),
                          t: (double.parse(month.text)),
                          r: (double.parse(interest.text)),
                          total: ((double.parse(balance.text))+(((double.parse(balance.text)) *
                                  (double.parse(interest.text)) *
                                  (double.parse(month.text))) /
                              100)), interest: (((double.parse(balance.text)) *
                          (double.parse(interest.text)) *
                          (double.parse(month.text))) /
                          100),));
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CompoundingInterst extends StatelessWidget {
  CompoundingInterst(
      {required this.p, required this.t, required this.r, required this.total,required this.interest});

  double p;
  double t;
  double r;
  double interest;

  double total;


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: mediaQueryHeight(context) / 1.5,
                  width: mediaQueryWidth(context)/0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:  Colors.white,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                              "Invest $p rs With Interest rate of $r% For $t Months 0 Years",
                          style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                          ),
                        ),
                        (mediaQueryHeight(context) / 70).addHSpace(),
                        Center(
                          child: Text(
                            "Total Balance",
                            style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Center(
                          child: Text(
                            "$total Rs",
                            style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          ),
                        ),
                        (mediaQueryHeight(context) / 70).addHSpace(),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Total Contribution",
                                      style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "$p Rs",
                                      style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Total Interest",
                                      style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "$interest Rs",
                                      style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: SfCircularChart(
                            tooltipBehavior: TooltipBehavior(
                              enable: true
                            ),
                            legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
                            series: <CircularSeries>[
                              PieSeries<InterestModel,String>(
                                    dataSource: <InterestModel>[
                                      InterestModel(name: "Balance", data: p),
                                       InterestModel(name: "Interest", data: total)
                                    ],
                                xValueMapper: (InterestModel data,_) => data.name,
                                yValueMapper: (InterestModel data,_) => data.data,
                                dataLabelSettings: DataLabelSettings(isVisible: true),
                              ),
                            ],
                          ),
                        ),





                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
