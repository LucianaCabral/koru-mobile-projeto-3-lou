import '../utils.dart';

class Brinde {
  String nome;
  int pontosNecessarios;
  int qtdEmEstoque;

  Brinde(
      {required this.nome,
      required this.pontosNecessarios,
      required this.qtdEmEstoque});

  void consultarPontosNecessarios() {
    imprimirConsultarTotalPontos(nome, pontosNecessarios);
  }

  void realizarTroca() {
    if (qtdEmEstoque > 0) {
      qtdEmEstoque--;
      print("Troca realizada! Você ganhou um(a) $nome");
    } else {
      print("No momento não possuímos o produto $nome em estoque.");
    }
  }
}
