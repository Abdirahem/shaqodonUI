// ignore: unused_import
// ignore_for_file: deprecated_member_use

// ignore: unused_import
import 'package:donui/dimentions.dart';
import 'package:donui/jobscard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mainui.dart';

class MyQualification extends StatelessWidget {
  final myIcons;
  final Color iconColors;
  final String myTitles;
  final String mySubTitles;
  final String myPrices;

  MyQualification(this.myIcons, this.myTitles, this.mySubTitles, this.myPrices,
      this.iconColors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header column
          Container(
            height: dimentions.qualificationHeaderHeight,
            color: Colors.grey.shade100,
            child: Column(
              children: [
                // qaulification navbar
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // back button
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainUi()));
                            },
                            icon: FaIcon(FontAwesomeIcons.angleLeft)),
                      ),
                      // Compnay name
                      Text(
                        myTitles,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      // Bookmark icon
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: null,
                            icon: FaIcon(FontAwesomeIcons.bookmark)),
                      ),
                    ],
                  ),
                ),

                // Comapny logo
                Container(
                  margin: EdgeInsets.all(20),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                      onPressed: null,
                      icon: FaIcon(
                        myIcons,
                        color: iconColors,
                        size: 40,
                      )),
                ),

                // jobtitle
                Text(
                  "UI/UX designer",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                // joblocation
                SizedBox(height: 5),
                Text(
                  "${mySubTitles} . \$${myPrices}",
                  style: GoogleFonts.roboto(
                      color: Colors.grey.shade500,
                      // fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                // skills
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RaisedButton(
                          disabledColor: Colors.white,
                          onPressed: null,
                          child: Text("Fulltime"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RaisedButton(
                          disabledColor: Colors.white,
                          onPressed: null,
                          child: Text("Remote"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RaisedButton(
                          disabledColor: Colors.white,
                          onPressed: null,
                          child: Text("Design"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Qualification text column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Qualification",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        '\u2022 There are many variations of passages of Lorem Ipsum available, but the majority have suffered',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.6),
                          height: 1.55,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '\u2022 There are many variations of passages of Lorem Ipsum available, but the majority have suffered',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.6),
                          height: 1.55,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '\u2022 There are many variations of passages of Lorem Ipsum available, but the majority have suffered',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.6),
                          height: 1.55,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // apply button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: Text(
                "Apply",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
