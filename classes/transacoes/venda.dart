import '../../enums/erro.dart';
import '../../utils.dart';
import '../produto.dart';

abstract class Venda {
  List<Produto> _produtosVendidos = <Produto>[];
  final double porcentagemDeLucro = 0.2;

  double totalProdutosVendidos = 0;

  void adicionarProdutoVendido(Produto produto) {
    _produtosVendidos.add(produto);
  }

  void venderProduto(Produto produto) {
    if (produto.qtdEstoque > 0) {
      produto.realizarVenda();
      adicionarProdutoVendido(produto);
      totalProdutosVendidos += produto.valor;
    } else {
      throw Exception(
          Erro.Produto);
    }
  }

  double calcularTotalVendido() {
    return _produtosVendidos.fold(0, (total, produto) => total + produto.valor);
  }

  double calcularMediaProdutosVendidos() {
    return _produtosVendidos.isEmpty
        ? 0
        : calcularTotalVendido() / _produtosVendidos.length;
  }

  double calcularLucro() => calcularTotalVendido() * porcentagemDeLucro;

  void verResumo(String nome) {
    double totalVendido = calcularTotalVendido();
    double media = calcularMediaProdutosVendidos();
    double lucroObtido = calcularLucro();
    imprimirResumo(nome,totalVendido, media, lucroObtido);
  }
}

