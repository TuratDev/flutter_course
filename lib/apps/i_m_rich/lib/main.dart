// import 'package:flutter/material.dart';

// import 'constants/colors.dart';
// import 'constants/text_styles.dart';

// void main() {
//   runApp(const ImRich());
// }

// class ImRich extends StatelessWidget {
//   const ImRich({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Тапшырма 3', style: TextStyle(fontSize: 28)),
//         backgroundColor: KoldonmoColors.bgColor,
//         elevation: 8,
//         // ignore: deprecated_member_use
//         shadowColor: Colors.black.withOpacity(1.0),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text("I'm Rich", style: KoldonmoTextStyles.textStyle),
//             const SizedBox(height: 20),
//             // const Text('Мен өлөөө баймын', style: KoldonmoTextStyles.textStyle),
//             Image.asset('assets/i_m_rich/images/diamond.png', width: 250),
//           ],
//         ),
//       ),
//       backgroundColor: KoldonmoColors.bgColor,
//     );
//   }
// }
