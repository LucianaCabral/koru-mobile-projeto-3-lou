import '../enums/genero..dart';
import '../enums/humor.dart';
import '../utils.dart';

class Pessoa{
  String nome;
  String cpf;
  final DateTime dataNascimento;
  int? idade;
  final Genero? genero;

  Pessoa(this.genero, {required this.nome, required this.cpf, required this.dataNascimento}){
    idade = _calcularIdade();
  }

  int _calcularIdade() {
    int idade = DateTime.now().year - dataNascimento.year;
    if (DateTime.now().month < dataNascimento.month ||
        (DateTime.now().month == dataNascimento.month &&
            DateTime.now().day < dataNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void maiorIdade() {
    String statusIdade = (idade ?? 0) >= 18 ? "maior de idade" : "menor de idade";
    imprimirCalcularIdade(nome, idade!, statusIdade);
  }

  void falar(String texto) {
    imprimirFalar('',nome, texto);
  }

  void termometroDoHumor(Humor humor) {
    imprimirTermometroHumor(humor);
  }
}
