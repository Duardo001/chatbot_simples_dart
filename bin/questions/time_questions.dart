import 'dart:io';

//implementar o Timing!

class TimeQuestions {
  String hour = 'Que horas sao?';
  String day = 'Que dia e hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String eduBot = 'EduBOT:\n';
  bool isThisATimeQuestion = false;
  final String outraPergunta = 'Se quiser, faça uma nova pergunta ou diga tchau!';
  TimeQuestions(this.question);

  bool isThisTime() {
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {
    if (question == hour) {
      print(
          '$eduBot Opa! são : ${date.hour} horas e ${date.minute} minutos!\n$outraPergunta');
    } else if (question == day) {
      print('$eduBot Opa! hoje é dia : ${date.day}\n$outraPergunta');
    } else if (question == year) {
      print('$eduBot Opa! estamos em : ${date.year}\n$outraPergunta');
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {
      // String _botQuestion = '$eduBot Não entendi, você quer saber das horas?';
      print('$eduBot Não entendi, você quer saber das horas?');
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        print(
            '$eduBot Beleza, são : ${date.hour} horas e ${date.minute} minutos!\n$outraPergunta');
      } else {
        print('$eduBot Ah, foi mal... entendi errado.\n$outraPergunta');
      }
    } else if (question.contains('dia') || question.contains('Dia')) {
      print('$eduBot Não entendi, você quer saber que dia é hoje?');
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        print('$eduBot Beleza, hoje é dia: ${date.day}\n$outraPergunta');
      } else {
        print('$eduBot Ah, foi mal... entendi errado.\n$outraPergunta');
      }
    } else if (question.contains('ano') || question.contains('Ano')) {
      print('$eduBot Não entendi, você quer saber em que ano estamos?');
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        print(
            '$eduBot Beleza, estamos no ano de 2077, a pandemia já está terminando... \n Brincadeirinha! estamos em : ${date.year}\n$outraPergunta');
      } else {
        // String _botAnswer = '$eduBot Ah, foi mal... entendi errado.';
        print('$eduBot Ah, foi mal... entendi errado.\n$outraPergunta');
      }
    }
  }
}
