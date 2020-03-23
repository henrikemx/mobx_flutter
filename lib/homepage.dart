import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/controller.dart';

class HomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter: MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'SobreNome'),
              onChanged: controller.mudarSobreNome,
            ),
            SizedBox(height: 20),
            Observer(builder: (_) {
              return Text('${controller.nome} ${controller.sobrenome}');
            }),
          ],
        ),
      ),
    );
  }
}
