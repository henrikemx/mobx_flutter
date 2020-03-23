import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{ // Store sinaliza ao codegen

@observable
String nome = '';

@observable
String sobrenome = '';

@action
mudarNome(String newName){
  nome = newName;
}

@action
mudarSobreNome(String newName){
  sobrenome = newName;
} 

}