class GoodManners {

  String question;
  bool isThisGoodManners = false;
  String eduBot = 'EduBOT:\n';
  GoodManners(this.question);


  bool isThisManners(){
    if(question.contains('oi') ||
    question.contains('Oi') ||
    question.contains('ola') ||
    question.contains('Olá')||
    question.contains('obrigado') ||
    question.contains('Obrigado') ||
    question.contains('obrigada') ||
    question.contains('Obrigada') ||
    question.contains('obg') ||
    question.contains('valeu') ||
    question.contains('vlw') ||
    question.contains('de nada') ||
    question.contains('De nada') ||
    question.contains('bom') ||
    question.contains('Bom') ||
    question.contains('boa') ||
    question.contains('Boa') ||
    question.contains('noite') ||
    question.contains('dia') ||
    question.contains('tarde')
    ){
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners(){
    if(    question.contains('bom') ||
    question.contains('Bom') ||
    question.contains('boa') ||
    question.contains('Boa') ||
    question.contains('noite') ||
    question.contains('dia') ||
    question.contains('tarde')||
    question.contains('oi') ||
    question.contains('Oi') ||
    question.contains('ola') ||
    question.contains('Olá')){
      print('$eduBot Olá, em que posso te ajudar?');
    } else if (    question.contains('obrigado') ||
    question.contains('Obrigado') ||
    question.contains('obrigada') ||
    question.contains('Obrigada') ||
    question.contains('obg') ||
    question.contains('valeu') ||
    question.contains('vlw')){
      print('$eduBot Não há de quê, estou aqui para te ajudar! :)');
    }
  }
}
