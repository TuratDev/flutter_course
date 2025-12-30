import 'package:audioplayers/audioplayers.dart';

void playerSounds(dynamic noteNumber) async {
  final player = AudioPlayer();
  // Assets папкасындагы файлдын аты ушул NoteNumber ге жараша болот
  await player.play(AssetSource('notes/note_$noteNumber.wav'));
}
