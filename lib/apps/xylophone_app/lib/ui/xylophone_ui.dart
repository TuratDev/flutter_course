import 'package:flutter/material.dart';

import '../constants/app_colors/app_colors.dart';
import '../widgets/build_note.dart';

class XylophoneUi extends StatelessWidget {
  const XylophoneUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,

        title: Text(
          'Xylophone App, Тапшырма 6',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            BuildNote(color: Colors.red, noteText: 'Do', noteNumber: '1'),
            BuildNote(color: Colors.orange, noteText: 'Re', noteNumber: '2'),
            BuildNote(color: AppColors.yellow, noteText: 'Mi', noteNumber: '3'),
            BuildNote(color: AppColors.green, noteText: 'Fa', noteNumber: '4'),
            BuildNote(color: AppColors.teal, noteText: 'Sol', noteNumber: '5'),
            BuildNote(color: AppColors.blue, noteText: 'La', noteNumber: '6'),
            BuildNote(color: AppColors.purple, noteText: 'Si', noteNumber: '7'),
          ],
        ),
      ),
    );
  }
}
