import 'package:pattern_builder/model/preferencias.dart';
import 'package:pattern_builder/model/usuario.dart';

class UsuarioBuilder {
  Usuario _usuario = Usuario();

  UsuarioBuilder._();
  static UsuarioBuilder get instancia => UsuarioBuilder._();

  UsuarioBuilder addNome(String nome) {
    _usuario.nome = nome;
    return this;
  }

  UsuarioBuilder addIdade(int idade) {
    _usuario.idade = idade;
    return this;
  }

  UsuarioBuilder addPreferencias(Preferencias preferencias) {
    _usuario.preferencias = _usuario.preferencias ?? [];

    _usuario.preferencias.add(preferencias);
    return this;
  }

  Usuario builder() {
    return _usuario;
  }
}
