// Entendendo como funciona as Streams no Dart

import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Contando: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('Stream finalizada');
  }

  var duStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = duStream.listen(
    (event) {
      if (event.isEven) {
        print('Esse número é par');
      }
    },
    onError: (e) {
      print('Ocorreu um erro: $e');
    },
    onDone: () {
      print('O Subscriber foi encerrado');
    },
  );

  duStream.map((event) => 'Subscriber 2 está assistindo: $event').listen(print);
  
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream pausada');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream retomada');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream cancelada');

  

  print('Main finalizada');
}
