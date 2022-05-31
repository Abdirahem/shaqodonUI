// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  final skill;
  Skills(this.skill);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            color: isSelected ? Colors.red : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(widget.skill),
        ),
      ),
    );
  }
}
