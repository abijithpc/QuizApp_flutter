import 'package:rolo_quiz/home.dart';
import 'package:rolo_quiz/questions.dart';

List<Questions> questionbank = [
  Questions(q: 'The star sign Aquarius is represented by a tiger', a: false),
  Questions(
      q: '"A" is the most common letter used in the English language',
      a: false),
  Questions(q: 'The Battle Of Hastings took place in 1066', a: true),
  Questions(q: 'H&M stands for Hennes & Mauritz', a: true),
  Questions(q: 'K is worth four points in Scrabble', a: true),
  Questions(q: 'In a deck of cards, the king has a moustache', a: true),
  Questions(
      q: 'When the two numbers on opposite sides of a dice are added together it always equals 7',
      a: false),
  Questions(
      q: 'In the English language there is no word that rhymes with orange',
      a: true),
];

void nextQuestion() {
  if (questionnumber < questionbank.length - 1) {
    print(questionbank.length);
  }
}
