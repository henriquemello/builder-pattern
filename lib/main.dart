import 'package:flutter/material.dart';
import 'package:pattern_builder/model/preferencias.dart';
import 'package:pattern_builder/model/usuario.dart';
import 'package:pattern_builder/usuarioBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Usuario usuario;

  void _incrementCounter() {
    usuario = UsuarioBuilder.instancia
        .addNome('Henrique Mello')
        .addIdade(32)
        .addPreferencias(
          Preferencias(nome: 'Netflix', avaliacao: 5),
        )
        .addPreferencias(
          Preferencias(nome: 'Globo', avaliacao: 1),
        )
        .builder();

    print(usuario.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
