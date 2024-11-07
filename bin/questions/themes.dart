class Themes {
  String question;
  bool isThisThemes = false;
  String eduBot = 'EduBOT:\n';
  final String outraPergunta =
      'Se quiser, faça uma nova pergunta ou diga tchau!';

  Themes(this.question);

  bool isThisTheme() {
    if (question.contains('tema') ||
        question.contains('assuntos') ||
        question.contains('temas') ||
        question.contains('sabe') ||
        question.contains('conhece') ||
        question.contains('conhecimento')) {
      return isThisThemes = true;
    }
    return isThisThemes;
  }

  themes() {
    if (question.contains('tema') ||
        question.contains('temas') ||
        question.contains('assuntos') ||
        question.contains('sabe') ||
        question.contains('conhece') ||
        question.contains('conhecimento')) {
      print(
          '$eduBot O que eu sei até o momento é:\n- Responder que dia/ano estamos;\n- Responder que horas são;\n- E realizar cálculos simples com as operações básicas!\n$outraPergunta');
    } else {
      print('$eduBot Ah, foi mal... entendi errado.\n$outraPergunta');
    }
  }
}
