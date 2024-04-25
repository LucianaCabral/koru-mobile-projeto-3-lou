import '../enums/erro.dart';
import '../utils.dart';

class Produto {
  final String nome;
  late double valor;
  late int qtdEstoque;
  int qtdVendida = 0;

  Produto({required this.nome, required this.valor, required this.qtdEstoque});


  void realizarVenda() {
    if (qtdEstoque > 0) {
      qtdVendida += 1;
      qtdEstoque -= 1;
      imprimirRealizarVenda(this.nome);
    } else {
      throw Exception(Erro.Produto);
    }
  }

  double verReceitaGerada() {
    return qtdVendida * valor;
  }
}
