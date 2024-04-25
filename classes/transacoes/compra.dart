import '../../enums/erro.dart';
import '../../utils.dart';
import '../brinde.dart';
import '../cliente.dart';
import '../produto.dart';
import '../revendedor.dart';
import 'venda.dart';

class Compra extends Venda {
  int pontos = 0;
  double dinheiro = 0;
  final List<Produto> produtosComprados = <Produto>[];
  List<Brinde> _brindes = <Brinde>[];

  Cliente? cliente;

  void comprarProduto(Cliente cliente, Produto produto, Revendedor revendedor) {
    try {
      if (cliente.dinheiro >= produto.valor) {
        venderProduto(produto);
        cliente.dinheiro -= produto.valor;
        adicionarProdutosComprados(produto);
        cliente.adicionarPontos();
        imprimirCompraEfetuadaPontosAcumulados(cliente.pontos);
      } else {
        imprimirSaldoInsuficiente();
      }
    } catch (exception) {
      if (exception is Exception) {
        throw Erro.Produto;
      }
    }
  }

  void adicionarProdutosComprados(Produto produto) {
    produtosComprados.add(produto);
  }

  void ordenarProdutosComprados() {
    produtosComprados.sort((a, b) => a.nome.compareTo
      (b.nome));
  }

  void verProdutosComprados() {
    ordenarProdutosComprados();
    imprimirProdutosOrdenados(produtosComprados);
  }

  double calcularTotalGasto() {
    return produtosComprados.isEmpty ? 0 : produtosComprados.fold(0,
            (total, produto) => total + produto.valor);
  }

  double calcularMediaProdutosComprados() {
    return produtosComprados.isEmpty ? 0
        : calcularTotalVendido() / produtosComprados.length;
  }

  void verResumoCliente() {
    double totalGasto = calcularTotalGasto();
    double media = calcularMediaProdutosComprados();
    totalGastoCliente(totalGasto, media);
  }

  void acumularPontos() {
    acumularPontos();
    imprimirCondsultarPontos(pontos);
  }
}
