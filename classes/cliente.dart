import '../utils.dart';
import 'brinde.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  final List<Produto> _produtosComprados = <Produto>[];
  List<Brinde> _brindes = <Brinde>[];
  int pontos = 0;

  Cliente(super.genero, this.dinheiro,
      {required super.nome, required super.cpf, required super.dataNascimento});

  @override
  void falar(String texto) {
    print("Cliente $nome diz: $texto");
  }

  void adicionarDinheiro(double valor) {
    dinheiro += valor;
    imprimirSaldoAposDeposito(nome, valor, dinheiro);
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    try {
      if (dinheiro >= produto.valor) {
        revendedor.venderProduto(produto);
        dinheiro -= produto.valor;
        _produtosComprados.add(produto);
        pontos++;
        print('numero de pontos: $pontos');
      } else {
        print('O cliente não tem saldo suficiente para comprar o produto');
      }
    } catch (exception) {
      if (exception is Exception) {
        throw Exception(
            "No momento não possuímos o produto ${produto.nome} em estoque.");
      }
    }
  }

  double calcularTotalGasto() {
    return _produtosComprados.isEmpty
        ? 0 : _produtosComprados.fold(0, (total, produto) => total + produto.valor);
  }

  double calcularMediaProdutosComprados() {
    double totalGasto = calcularTotalGasto();
    return totalGasto / _produtosComprados.length;
  }

  void verResumoCliente() {
    double totalGasto = calcularTotalGasto();
    double mediaProdutos = calcularMediaProdutosComprados();
    totalGastoCliente(nome, totalGasto, mediaProdutos);
  }

  void ordenarProdutosComprados() {
    _produtosComprados.sort((a, b) => a.nome.compareTo(b.nome));
  }

  void verProdutosComprados() {
    ordenarProdutosComprados();
    imprimirProdutosOrdenados(_produtosComprados);
  }

  void consultarTotalPontos() {
   imprimirTotalPontos(nome, pontos);
  }

  void trocarPontosPorBrinde(Brinde brinde) {
    try {
      if (pontos >= brinde.pontosNecessarios) {
        brinde.realizarTroca();
        pontos -= brinde.pontosNecessarios;
        _brindes.add(brinde);

        print('$nome trocou seus pontos por um ${brinde.nome} e ainda restou $pontos pontos.');
      } else {
        print('$nome não possui pontos suficientes para trocar pelo ${brinde.nome}');
      }
    } catch (e) {
      if (e is Exception) {
        print('Falha na troca');
      }
    }
  }

  void ordenarBrindes() {
    _brindes.sort((a, b) => a.nome.compareTo(b.nome));
  }

  void verBrindes() {
    imprimirNomeCliente(nome);
    ordenarBrindes();
    _brindes.forEach((brinde) {
      imprimirBrindesRecebidos(brinde);
    });
  }
}
