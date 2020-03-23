import 'package:mobx/mobx.dart';

class Controller {
  // entidade Observavel
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  // cria a ação implicitamente
  Action increment;

  // método construtor
  Controller(){
    increment = Action(_increment);

    // é possível "escutar" uma reação dentro do código
    autorun((_){
      print(_counter);
    });
  }

  // método que executa a ação
  _increment(){
    counter++;
  }
}