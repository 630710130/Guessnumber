import 'dart:io';
import 'dart:math';


void main() {
  var r = Random();
  int answer = r.nextInt(100) + 1;
  var iscorrect = false;
  int total=1;
  int? guess;
  stdout.writeln('          ║ Guess The Number ║          ');
  do
  {

    stdout.write(" Guess the number betweeen 1 and 100 : ");
    String? input = stdin.readLineSync();
    guess =int.tryParse(input!);
    if (input == null)
    {
      continue;
    }
    if (guess == null)
    {

      continue;
    }
    iscorrect = doGuess(guess,answer,total)!;
    total++;
  } while(!iscorrect);

}
bool? doGuess(int guess, int answer, int total) {
  if (guess == answer)
  {
    print('      $answer is Correct , total Guess $total      ');
    return true;
  }
  else if (guess > answer) {
    print('              $guess is Too high!                ');

    return false;
  }
  else if (guess < answer) {
    print('              $guess is Too Low!                 ');

    return false;
  }
}
