import 'package:flutter/material.dart';

// 1. ИМПОРТТОР
import 'package:flutter_course/apps/counter_app/lib/main.dart';
import 'package:flutter_course/apps/quiz_app/lib/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Жалпы сабактардын тизмеси'),
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
            _buildAppCard(
              context,
              title: 'Counter App',
              subtitle: 'Биринчи Флаттер колдонмосу',
              icon: Icons.add_circle,
              color: Colors.teal,
              page: const CounterApp(),
            ),

            _buildAppCard(
              context,
              title: 'Quiz App',
              subtitle: 'Текшерүү жана Тизмелер',
              icon: Icons.assignment_turned_in,
              color: Colors.green,
              page: const QuizApp(),
            ),

            const SizedBox(height: 20),
            _buildSectionHeader('Логика жана Маалымат'),

            // Жасала элек долбоорлор (page: null)
            _buildAppCard(
              context,
              title: 'The Weather App',
              subtitle: 'API менен иштөө (Жакында)',
              icon: Icons.wb_sunny,
              color: Colors.orange,
              page: null,
            ),

            const SizedBox(height: 20),
            _buildSectionHeader('Татаал долбоорлор'),
            _buildAppCard(
              context,
              title: 'Flash Chat App',
              subtitle: 'Firebase жана Чат (Жакында)',
              icon: Icons.bolt,
              color: Colors.yellow[800]!,
              page: null,
            ),
            _buildAppCard(
              context,
              title: 'Test Country',
              subtitle: 'Өлкөлөр боюнча тест (Жакында)',
              icon: Icons.public,
              color: Colors.cyan,
              page: null,
            ),
            _buildAppCard(
              context,
              title: 'The News App',
              subtitle: 'Жаңылыктар порталы (Жакында)',
              icon: Icons.newspaper,
              color: Colors.brown,
              page: null,
            ),
          ],
        ),
      ),
    );
  }

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

  Widget _buildAppCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Widget? page, // null болушу мүмкүн
  }) {
    bool isLocked = page == null;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      // Эгер жасала элек болсо, бир аз тунук кылып коёбуз
      child: Opacity(
        opacity: isLocked ? 0.6 : 1.0,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          leading: CircleAvatar(
            backgroundColor: isLocked ? Colors.grey : color,
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
          trailing: Icon(
            isLocked ? Icons.lock : Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
          onTap: () {
            if (isLocked) {
              // Жасала элек болсо билдирүү чыгаруу
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$title долбоору азырынча жасала элек'),
                  backgroundColor: Colors.indigo,
                  duration: const Duration(seconds: 2),
                ),
              );
            } else {
              // Даяр болсо өтүү
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            }
          },
        ),
      ),
    );
  }
}
