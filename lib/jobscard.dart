// ignore_for_file: deprecated_member_use

import 'package:donui/dimentions.dart';
import 'package:donui/qualification.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JobsCard extends StatelessWidget {
  final myIcon;
  final Color iconColor;
  final String myTitle;
  final String mySubTitle;
  final String myPrice;

  JobsCard(
      this.myIcon, this.myTitle, this.mySubTitle, this.myPrice, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: dimentions.jobsCardHpadding,
          vertical: dimentions.jobsCardVpadding),
      child: GestureDetector(
        onTap: () {
          print(myPrice);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyQualification(
                      myIcon, myTitle, mySubTitle, myPrice, iconColor)));
        },
        child: Container(
          width: dimentions.jobsCardWidth,
          height: dimentions.jobsCardHeight,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              // row one
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // image
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: FaIcon(
                          myIcon,
                          size: 40,
                          color: iconColor,
                        ),
                      ),
                      // title and subtitle

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            myTitle,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            mySubTitle,
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // bookmar icon
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: FaIcon(
                      FontAwesomeIcons.bookmark,
                      size: 25,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              // row two
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Button one
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RaisedButton(
                            disabledColor: Colors.white24,
                            onPressed: null,
                            child: Text("Fulltime"),
                          ),
                        ),
                      ),
                      // Button two
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RaisedButton(
                            disabledColor: Colors.white24,
                            onPressed: null,
                            child: Text("Designer"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // row text prices
                  Row(
                    children: [
                      // price
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          myPrice,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "/month",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade400),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
