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
      imprimirTrocaRealizada(this);
    } else {
      imprimirTrocaNaoRealizada(this);
    }
  }
}
