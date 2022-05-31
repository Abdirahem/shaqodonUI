import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mainui.dart';

void main() {
  runApp(const DonUI());
}

class DonUI extends StatefulWidget {
  const DonUI({Key? key}) : super(key: key);

  @override
  State<DonUI> createState() => _DonUIState();
}

class _DonUIState extends State<DonUI> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: MainUi());
  }
}
