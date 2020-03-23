import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{ // Store sinaliza ao codegen
  @observable
  int counter = 0;

  @action
  increment(){
    counter++;
  }
}