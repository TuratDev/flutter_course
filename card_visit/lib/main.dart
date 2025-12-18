import 'package:flutter/material.dart';

import 'card_visit.dart';

void main() {
  runApp(const VisitApp());
}

class VisitApp extends StatelessWidget {
  const VisitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardVisit(), debugShowCheckedModeBanner: false);
  }
}
