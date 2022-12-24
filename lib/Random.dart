import 'dart:math';
enum GuessResult
{
  correct,tooHigh,tooLow;
}
class Game
{
  final int answer;

  int _totalGuess = 0;

  //constructor
  Game(int? maxRandom) :
        answer = Random().nextInt(maxRandom!) + 1
  {
    //print('answer is $answer');
  }
  GuessResult? checkAns(int guess)
  {
    _totalGuess++;
    if (guess == answer)
    {
      return GuessResult.correct;
    }
    if (guess > answer)
    {
      return GuessResult.tooHigh;
    }
    if (guess < answer)
    {
      return GuessResult.tooLow;
    }
  }
  int get totalGuess
  {
    return _totalGuess;
  }
}