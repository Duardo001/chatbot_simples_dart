import 'dart:io';

import 'questions/calculator.dart';
import 'questions/themes.dart';
import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';


void main() async {
  String eduBot = 'EduBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().eduBotStream(1, 10);
  var Subscriber = myStream.listen((event) {
    if (event.isEven) {
      print(
          '                 EduBOT está ativo a: $event segundos                        ');
    }
  }, onDone: () {
    print('EduBOT está se encerrando, faça sua última pergunta');
    a = false;
  });

  print('\n--> Iniciando o EduBOT, aguarde... ');

  await BotClock().clock(2);

  print('EduBOT:\n- Oi :) \nComo posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('--> Processando pergunta, aguarde...');
    await BotClock().clock(1);
    if (usuario.contains('Flw') ||
        usuario.contains('flw') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus') ||
        usuario.contains('tchau')) {
      a = false;
      print('$eduBot- Até a próxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(3);
      TimeQuestions(usuario).timeQuestion();

    } else if (Calculadora(usuario).isCalcular()) {
      await BotClock().clock(1);
      Calculadora(usuario).calcQuestion();

    } else if (GoodManners(usuario).isThisManners()){
          GoodManners(usuario).goodManners();
    } else if (Themes(usuario).isThisTheme()){
      Themes(usuario).themes();
    
    }

    // ignore: dead_code
    else if (false) {
      // Código morto para adicionar novas funcionalidades
    } else {
      await BotClock().clock(4);
      print(
          '$eduBot- Não fui treinado para responder a essa pergunta. Desculpe :c ');
      print('Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('-- Encerrando EduBOT --\n');
}
