import 'package:flutter/material.dart';

// 1. ИМПОРТТОР (Даректерди өзүңдүн папкаларыңа карап текшерип алгыла)

import 'package:flutter_course/apps/bmi_calculator_app/lib/main.dart';
import 'package:flutter_course/apps/counter_app/lib/main.dart';
import 'package:flutter_course/apps/dice_app/lib/main.dart';
import 'package:flutter_course/apps/i_m_rich/lib/main.dart';
import 'package:flutter_course/apps/quiz_app/lib/main.dart';
import 'package:flutter_course/apps/visit_card/lib/main.dart';
import 'package:flutter_course/apps/xylophone_app/lib/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Flutter Course Portfolio'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Баштапкы сабактар'),

            // 1. Counter App
            _buildAppCard(
              context,
              title: 'Counter App',
              subtitle: 'Биринчи Флаттер колдонмосу',
              icon: Icons.add_circle,
              color: Colors.teal,
              // БУЛ ЖЕРГЕ ошол колдонмонун башкы классын жаз:
              page: const CounterApp(),
            ),

            // 2. I'm Rich
            _buildAppCard(
              context,
              title: "I'm Rich",
              subtitle: 'Дизайн жана Assets менен иштөө',
              icon: Icons.diamond,
              color: Colors.amber,
              page: const ImRich(),
            ),

            // 3. Visit Card
            _buildAppCard(
              context,
              title: 'Visit Card',
              subtitle: 'Layouts (Column & Row)',
              icon: Icons.badge,
              color: Colors.blueGrey,
              page: const VisitApp(),
            ),

            const SizedBox(height: 20),
            _buildSectionHeader('Интерактивдүү колдонмолор'),

            // 4. Dice App
            _buildAppCard(
              context,
              title: 'Dice App',
              subtitle: 'StatefulWidget жана Логика',
              icon: Icons.casino,
              color: Colors.redAccent,
              page: const DiceApp(),
            ),

            // 5. Xylophone App
            _buildAppCard(
              context,
              title: 'Xylophone App',
              subtitle: 'Үндөр менен иштөө',
              icon: Icons.music_note,
              color: Colors.purple,
              page: const XylophoneApp(),
            ),

            // 6. Quiz App
            _buildAppCard(
              context,
              title: 'Quiz App',
              subtitle: 'Текшерүү жана Тизмелер',
              icon: Icons.assignment_turned_in,
              color: Colors.green,
              page: const QuizApp(),
            ),

            const SizedBox(height: 20),
            _buildSectionHeader('Татаал логика'),

            // 7. BMI Calculator
            _buildAppCard(
              context,
              title: 'BMI Calculator',
              subtitle: 'Дене салмак индексин эсептөө',
              icon: Icons.monitor_weight,
              color: Colors.blue,
              page: const BmiCalculator(),
            ),
          ],
        ),
      ),
    );
  }

  // Бөлүмдөрдүн аталышы
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  // Колдонмолордун картасы
  Widget _buildAppCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Widget page,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
