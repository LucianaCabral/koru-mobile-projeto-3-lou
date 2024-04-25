import '../utils.dart';
import 'brinde.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';
import 'transacoes/compra.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Brinde> _brindes = <Brinde>[];
  int pontos = 0;

  Compra? compra;

  Cliente(super.genero, this.dinheiro,
      {required super.nome, required super.cpf, required super.dataNascimento});

  @override
  void falar(String texto) {
    imprimirFalar('', nome, texto);
  }

  void adicionarDinheiro(double valor) {
    dinheiro += valor;
    imprimirSaldoAposDeposito(nome, valor, dinheiro);
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    compra?.comprarProduto(this, produto, revendedor);
  }

  void adicionarPontos() {
    ++pontos;
  }

  void consultarlPontos() {
    imprimirTotalPontos(nome, pontos);
  }

  void trocarPontosPorBrinde(Brinde brinde) {
    try {
      if (pontos >= brinde.pontosNecessarios) {
        brinde.realizarTroca();
        pontos -= brinde.pontosNecessarios;
        _brindes.add(brinde);
        imprimirTrocaPontosPorBrinde(this.nome, brinde.nome, pontos);
      } else {
        imprimirENaoPossuiPontosParaTrocaDeBrinde(this.nome, brinde.nome, pontos);
      }
    } catch (erro) {
      if (erro is Exception) {
        throw erro.toString();
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
