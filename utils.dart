import 'classes/brinde.dart';
import 'classes/cliente.dart';
import 'classes/produto.dart';

void pularLinha() {
  print('\n');
}

void mostrarQtdProdutoEmEstoque(String nomeProduto, int qtdEstoque) {
  print('$nomeProduto | Quantidade em estoque: $qtdEstoque');
}

void mostrarQtdVendida(String nomeProduto, int qtdVendida) {
  print('$nomeProduto | Quantidade vendida: $qtdVendida');
}


void imprimirSaldo(Cliente cliente) {
  print('O Cliente ${cliente.nome} tem o seguinte saldo: R\$ ${cliente.dinheiro} reais');
}

void imprimirSaldoAposDeposito(String nome, double valor, double dinheiro) {
  print('$nome após o depósito de R\$ $valor reais agora possui ${dinheiro.toStringAsFixed(2)} reais.');
}

void imprimirResumo(
    String nome, double totalVendido, double media, double lucroObtido) {
  print(
      "O total vendido por $nome foi de R\$ ${totalVendido.toStringAsFixed(2)} reais "
      "e a média aritmética de valor dos produtos vendidos é de R\$ ${media.toStringAsFixed(2)} reais. "
      "O lucro recebido foi de R\$ ${lucroObtido.toStringAsFixed(2)} reais.");
}

void totalGastoCliente(String nome, double totalGasto, double media) {
  print('Resumo Cliente: O total gasto $nome foi de R\$ ${totalGasto.
  toStringAsFixed(2)} reais e a média de valor dos produtos foi de R\$ ${media.
  toStringAsFixed(2)} reais.');
}

void imprimirProdutosOrdenados(List<Produto> produtos) {
  produtos.forEach((produto) {
    print('${produto.nome} | R\$ ${produto.valor.toStringAsFixed(2)}');
  });
}

void imprimirNomeCliente(String nome) {
  print('Brindes recebidos por $nome: ');
}

void imprimirBrindesRecebidos(Brinde brinde) {
  print('${brinde.nome}');
}

void imprimirConsultarTotalPontos(String nome, int pontosNecessarios) {
  print('Para ganhar uma $nome você precisa de $pontosNecessarios pontos');
}

void imprimirRealizarTroca() {
}

void imprimirTotalPontos(String nome, int pontos) {
    print('$nome possui $pontos pontos.');
  }

