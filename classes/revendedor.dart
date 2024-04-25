import '../utils.dart';
import 'pessoa.dart';

class Revendedor extends Pessoa {
  final String matricula;
  Revendedor(super.genero, this.matricula,
      {required super.nome, required super.cpf, required super.dataNascimento});

  void falar(String texto) {
    imprimirFalar(genero?.title, nome, texto);
  }
}

