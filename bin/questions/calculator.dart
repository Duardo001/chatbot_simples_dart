import 'dart:io';

class Calculadora {
  double a = 0.0;
  double b = 0.0;
  String question;
  String eduBot = 'EduBOT:\n';
  final String outraPergunta =
      'Se quiser, faça uma nova pergunta ou diga tchau!';
  bool isThisCalcular = false;

  Calculadora(this.question);

  bool isCalcular() {
    if (question.contains('calcular') ||
        question.contains('Calcular') ||
        question.contains('Calculadora') ||
        question.contains('calculadora') ||
        question.contains('calculo') ||
        question.contains('Calculo') ||
        question.contains('Cálculo') ||
        question.contains('cálculo')) {
      isThisCalcular = true;
    }
    return isThisCalcular;
  }

  calcSoma(double a, double b) {
    return a + b;
  }

  calcSub(double a, double b) {
    return a - b;
  }

  calcDiv(double a, double b) {
    return a / b;
  }

  calcMulti(double a, double b) {
    double multi = a * b;
    var respostaAjustada = multi.toStringAsFixed(2);
    return respostaAjustada;
  }

  calcQuestion() {
    if (question.contains('calcular') ||
        question.contains('Calcular') ||
        question.contains('Calculadora') ||
        question.contains('calculadora') ||
        question.contains('calculo') ||
        question.contains('Calculo') ||
        question.contains('Cálculo') ||
        question.contains('cálculo')) {
      print('$eduBot Não entendi, você quer realizar um cálculo?');
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        print('Me fale o primeiro número:');
        String n1 = stdin.readLineSync().toString();
        a = double.parse(n1);
        print('Me fale o segundo número: ');
        String n2 = stdin.readLineSync().toString();
        b = double.parse(n2);

        print(
            '$eduBot Beleza, que tipo de cáculo você quer fazer?\n\n\t1 - Soma\n\t2 - Subtração\n\t3 - Divisão\n\t4 - Multiplicação');
        String answer = stdin.readLineSync().toString();
        int resposta = int.parse(answer);

        switch (resposta) {
          case 1:
            print('A soma da conta é: ${calcSoma(a, b)}.\n$outraPergunta');
            break;
          case 2:
            print('A subtração da conta é: ${calcSub(a, b)}.\n$outraPergunta');
            break;
          case 3:
            print('A divisão da conta é: ${calcDiv(a, b)}.\n$outraPergunta');
          case 4:
            print(
                'A multiplicação da conta é: ${calcMulti(a, b)}.\n$outraPergunta');
            break;
          default:
            print('Não entendi o que você quis dizer, perdão.\n$outraPergunta');
        }
      } else {
        print(
            '$eduBot Ah, foi mal... entendi errado.\nSe quiser, faça uma nova pergunta!');
      }
    }
  }
}
