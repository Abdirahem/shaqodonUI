import 'package:donui/jobscard.dart';
import 'package:donui/myappbar.dart';
import 'package:donui/skills.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  State<MainUi> createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  final List _skills = ["Marketing, Designer, Developer"];

  @override
  Widget build(BuildContext context) {
    print(
        "the size of width is " + MediaQuery.of(context).size.width.toString());
    print("the size of height is " +
        MediaQuery.of(context).size.height.toString());
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Column(
            children: [
              // custom appbar
              MyAppBar(),
              // searching bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15),
                        child: FaIcon(FontAwesomeIcons.magnifyingGlass),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(15),
                        child: FaIcon(FontAwesomeIcons.sliders),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "Searching.."),
                ),
              ),

              // jobs row
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _skills.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Skills("Developer"),
                          Skills("Designer"),
                          Skills("Helper"),
                        ],
                      );
                    }),
              ),

              Expanded(
                flex: 6,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _skills.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          JobsCard(
                              FontAwesomeIcons.twitter,
                              "Twitter developer",
                              "Mogadishu",
                              "\$90k-10k",
                              Colors.blue.shade200),
                          JobsCard(FontAwesomeIcons.airbnb, "Graphic designer",
                              "Airbnb . Mogadishu", "\$9k-11k", Colors.red),
                          JobsCard(
                              FontAwesomeIcons.tiktok,
                              "Tiktoker",
                              "Tiktoker . Mogadishu",
                              "\$90k-10k",
                              Colors.black),
                          JobsCard(FontAwesomeIcons.youtube, "YouTube gamer",
                              "Mogadishu", "\$90k-10k", Colors.red.shade700),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
