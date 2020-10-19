import 'package:pattern_builder/model/preferencias.dart';

class Usuario {
  String nome;
  int idade;
  List<Preferencias> preferencias;
  
  Usuario({this.nome, this.idade, this.preferencias});

  @override
  String toString() => 'Usuario(nome: $nome, idade: $idade, preferencias: $preferencias)';
}
