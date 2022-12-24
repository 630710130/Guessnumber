import 'dart:io';
import 'package:guessnumber/Random.dart';

void main() {
  var maxrandom = 100;
  var GameSum = 0;
  var Score = <int>[];
  var difficulty;
  var playAgain;
  print("║         GUESS THE NUMBER GAME        ║");
  do {
    var game = Game(maxrandom);
    GuessResult? guessresult;
    do {
      stdout.write("Guess number :");
      String? input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null)
      {
        continue;
      }
      guessresult = game.checkAns(guess)!;
      if (guessresult == GuessResult.correct)
      {
        print('$guess is Correct ');
      } else if (guessresult == GuessResult.tooHigh)
      {
        print('$guess is too High');

      } else if (guessresult == GuessResult.tooLow)
      {
        print('$guess is too Low');

      }
    } while (guessresult != GuessResult.correct);
    ;
    do {
      stdout.write("Play again?(Y,N):");
      String input = stdin.readLineSync()!.toUpperCase();
      if (input == 'Y' || input == 'N')
      {
        playAgain = input;
      }
    } while (playAgain == null);
    GameSum++;
    Score.add(game.totalGuess);
  } while (playAgain == 'Y');
  print('you play $GameSum game ');
  for (var i = 0; i < Score.length; i++)
  {
    print('🎅game #${i + 1}:guess ${Score[i]} time.');
  }
}