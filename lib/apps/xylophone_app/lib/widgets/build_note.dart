import 'package:flutter/material.dart';
import '../data/audio_repos.dart';

class BuildNote extends StatelessWidget {
  final Color color;
  final String noteText;
  final String noteNumber;

  const BuildNote({
    super.key,
    required this.color,
    required this.noteText,
    required this.noteNumber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        playerSounds(noteNumber);
      },

      splashColor: Colors.white24,
      highlightColor: Colors.white10,
      child: Container(
        width: double.infinity,
        height: 80,
        color: color,

        alignment: Alignment.center,
        child: Text(
          noteText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
