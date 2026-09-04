import 'package:quizler_flutter_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionList = [
    Question(q: 'Q1: \n Some cats are actually allergic to humans', a: true),
    Question(
      q: 'Q2: \n You can lead a cow down stairs but not up stairs.',
      a: false,
    ),
    Question(
      q: 'Q3: \n Approximately one quarter of human bones are in the feet.',
      a: true,
    ),
    Question(q: 'Q4: \n A slug\'s blood is green.', a: true),
    Question(
      q: 'Q5: \n Buzz Aldrin\'s mother\'s maiden name was "Moon".',
      a: true,
    ),
    Question(
      q: 'Q6: \n It is illegal to pee in the Ocean in Portugal.',
      a: true,
    ),
    Question(
      q: 'Q7: \n No piece of square dry paper can be folded in half more than 7 times.',
      a: false,
    ),
    Question(
      q: 'Q8: \n In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      a: true,
    ),
    Question(
      q: 'Q9: \n The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      a: false,
    ),
    Question(
      q: 'Q10: \n The total surface area of two human lungs is approximately 70 square metres.',
      a: true,
    ),
    Question(q: 'Q11: \n Google was originally called "Backrub".', a: true),
    Question(
      q: 'Q12: \n Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      a: true,
    ),
    Question(
      q: 'Q13: \n In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      a: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
