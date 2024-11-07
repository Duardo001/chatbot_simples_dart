// Arquivo para testes e entendimento sobre o objeto Future do Dart


void main() {
  // Future myFuture = Future(() {
  //   print('Estamos indo para o futuro!');
  //   return 21;
  // }).then((value) => print('O valor é $value'));

  // Future<int> myFutureFunc() async {
  //   print('Temos uma função no futuro!!');
  //   await Future.delayed(Duration(seconds: 5));
  //   throw Exception();
  //   return 12;
  // }

  // myFutureFunc()
  //     .then((value) => print('Valor da função da futuro é $value!!!'))
  //     .onError((error, stackTrace) => print('Aconteceu um erro!'))
  //     .whenComplete(() => print('Função Future finalizada'));

  // Future<int> myFutureErrorFunc(int a, int b) async {
  //   try {
  //     if (a > b) {
  //       throw Exception();
  //     }
  //     print('Temos uma função funcional');
  //     await Future.delayed(Duration(seconds: 5));
  //     return 42;
  //   } catch (e) {
  //     print('Um erro encontrado: $e');
  //     return 42;
  //   } finally {
  //     print('Função Finalizada!!!');
  //   }
  // }

  // myFutureErrorFunc(4, 2).then((value) => print('O valor é $value'));

// Simulando um diálogo assíncrono
  Future funcAssincrona() async {
    try {
      print('João: Bom dia, grupo!');
      await Future.delayed(Duration(seconds: 2));
      print('Mariana: Bom dia! Tudo bem?');
      await Future.delayed(Duration(seconds: 1));
      print('João: Suave, e vc?');
      await Future.delayed(Duration(seconds: 2));
      print('Mariana: Certinho.');
      await Future.delayed(Duration(seconds: 2));
      return 'Diálogo finalizado';
    } catch (e) {
      print('Ocorreu um erro do tipo: $e');
    } finally {
      print('Função finalizada');
    }
    return 'Diálogo finalizado';
  }

  funcAssincrona().then((value) => print(value));

  // print('Main finalizada');
}
