import 'classes/brinde.dart';
import 'classes/cliente.dart';
import 'classes/produto.dart';
import 'enums/humor.dart';

void pularLinha() {
  print('\n');
}

void imprimirFalar(String? genero, String nome, String texto) {
  print('$genero $nome diz: $texto');
}

void mostrarQtdProdutoEmEstoque(String nomeProduto, int qtdEstoque) {
  print('$nomeProduto | Quantidade em estoque: $qtdEstoque');
}

String formatarMensagemException(Exception exception) {
  return "Ocorreu um erro: ${exception.toString()}";
}

void mostrarQtdVendida(String nomeProduto, int qtdVendida) {
  print('$nomeProduto | Quantidade vendida: $qtdVendida');
}

void imprimirSaldo(Cliente cliente) {
  print(
      'O Cliente ${cliente.nome} tem o seguinte saldo: R\$ ${cliente.dinheiro} reais');
}

void imprimirSaldoAposDeposito(String nome, double valor, double dinheiro) {
  print(
      '$nome após o depósito de R\$ $valor reais agora possui ${dinheiro.toStringAsFixed(2)} reais.');
}

void imprimirResumo(
    String nome, double totalVendido, double media, double lucroObtido) {
  print(
      "O total vendido por $nome foi de R\$ ${totalVendido.toStringAsFixed(2)} reais "
      "e a média aritmética de valor dos produtos vendidos é de R\$ ${media.toStringAsFixed(2)} reais. "
      "O lucro recebido foi de R\$ ${lucroObtido.toStringAsFixed(2)} reais.");
}

void totalGastoCliente(double totalGasto, double media) {
  print(
      'Resumo Cliente: O total gasto  foi de R\$ ${totalGasto.toStringAsFixed(2)} reais e a média de valor dos produtos foi de R\$ ${media.toStringAsFixed(2)} reais.');
}

void imprimirRealizarVenda(String nome) {
  print('Compra de um(a) produto $nome realizada com sucesso!!!!');
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

void imprimirRealizarTroca(
    double dinheiro, Produto produto, Brinde brinde, int pontos) {
  if (dinheiro >= produto.valor) {
    print('pontos ${pontos}');
  } else {
    print(
        '${produto.nome} trocou seus pontos por um ${brinde.nome} e restou $pontos pontos.');
  }
}

void imprimirTotalPontos(String nome, int pontos) {
  print('$nome possui $pontos pontos.');
}

void imprimirNomeEHumor(String nome, String humorDoDia) {
  print('$nome, $humorDoDia');
}

void imprimirTrocaRealizada(Brinde brinde) {
  print("Troca realizada! Você ganhou um(a) ${brinde.nome}");
}

void imprimirTrocaNaoRealizada(Brinde brinde) {
  print("No momento não possuímos o produto $brinde em estoque.");
}

void imprimirCondsultarPontos(int pontos) {
  print('Número de pontos: $pontos');
}

void imprimirCompra(Cliente cliente, Produto produto, int pontos) {
  if (cliente.dinheiro >= produto.valor) {
    print('${cliente.nome} comprou o produto ${produto.nome}');
    print('Número de pontos acumulados: $pontos');
  } else {
    print(
        'O cliente ${cliente.nome} não tem saldo suficiente para comprar '
            'o produto ${produto.nome}');
  }
}

void imprimirCompraEfetuadaPontosAcumulados(int pontos) {
  print('Número de pontos acumulados: $pontos');
}

void imprimirSaldoInsuficiente() {
  print('O cliente não tem saldo suficiente para comprar o produto');
}

void imprimirNenhumProdutoComprado(String nome) {
  print("Nenhum produto comprado por ${nome}");
}

void imprimirTermometroHumor(Humor humor) {
  print('${humor.mensagem}');
}

void imprimirTrocaPontosPorBrinde(
    String nomeCliente, String nomeBrinde, int pontosRestantes) {
  print(
      '$nomeCliente trocou seus pontos por um $nomeBrinde e restou $pontosRestantes pontos.');
}

void imprimirENaoPossuiPontosParaTrocaDeBrinde(
    String nomeCliente, String nomeBrinde, int pontos) {
  print('$nomeCliente: Não possui possui $pontos para a troca do $nomeBrinde ');
}

void imprimirCalcularIdade(String nome, int idade, String statusIdade) {
  print('$nome tem $idade anos, portanto é $statusIdade.');
}

/**A função imprimirNomeEHumor recebe dois parâmetros nome e humorDoDia e os imprime na tela. A função calcularTotalProdutosComprados recebe uma lista de produtos e retorna a soma dos valores desses produtos. Em seguida, é criada a classe Produto para representar um produto com um valor. A função main demonstra como usar essas funções**/
/** Na main classe Cliente possui um método termometroDoHumor que recebe um enum Humor e imprime a mensagem correspondente com o nome do cliente. **/
