import 'package:compounding/extras/extensioon.dart';
import 'package:compounding/models/interest_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class InterestWithChart extends StatelessWidget {
  InterestWithChart({required this.balance,required this.rate,required this.time,required this.total}) ;
  double balance;

  double rate;
  double total;
  double time;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: mediaQueryHeight(context) / 1.6,
        width: mediaQueryWidth(context) / 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Invest $balance rs With Interest rate of $rate% For $time Months 0 Years",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              (mediaQueryHeight(context) / 70).addHSpace(),
              Center(
                child: Text(
                  "Total Balance",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Text(
                  "$total Rs",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
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
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "$balance Rs",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Total Interest",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${total - balance} Rs",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: SfCircularChart(
                  tooltipBehavior: TooltipBehavior(enable: true,),
                  // legend: Legend(
                  //     isVisible: true,
                  //     overflowMode: LegendItemOverflowMode.wrap),
                  series: <CircularSeries>[
                    DoughnutSeries<InterestModel, String>(
                      dataSource: <InterestModel>[
                        InterestModel(name: "Balance", data:(balance/total)*100.0),
                        InterestModel(
                            name: "Interest", data: ((total - balance)/total)*100.0)
                      ],
                      xValueMapper: (InterestModel data, _) =>
                      data.name,
                      yValueMapper: (InterestModel data, _) =>
                      data.data,
                      dataLabelSettings:
                      DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
