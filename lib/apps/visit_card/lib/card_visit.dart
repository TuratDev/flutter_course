import 'package:flutter/material.dart';

import 'widgets/bizdin_text_widget.dart';

// биздин жасап жаткан колдонмонун негизги бети ушул жерде

class CardVisit extends StatelessWidget {
  const CardVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'Тапшырма 4',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Тегерек болгон аватар сүрөттү кою үчүн ушул Виджет колдонулат
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.yellow,
                backgroundImage: AssetImage('assets/images/my_avatar.jpg'),
              ),
              SizedBox(height: 20),
              BiztinTextWidget(
                text: "Turat Alybaev",
                fontFamily: 'Pacifico',
                fontSize: 48,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              BiztinTextWidget(
                text: "Flutter Developer",
                fontFamily: 'TimesNewRoman',
                fontSize: 28,
                color: Colors.black,
              ),
              SizedBox(
                width: 250,
                child: Divider(height: 30, color: Colors.white30),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone_android, color: Colors.teal),
                  title: Text(
                    '0557 10 64 46',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    'turat.alybaev@gmail.com',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
