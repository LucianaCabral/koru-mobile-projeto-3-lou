void pularLinha() {
  print('\n');
}

void mostrarQtdProdutoEmEstoque(String nomeProduto, int qtdEstoque) {
  print('$nomeProduto | Quantidade em estoque: $qtdEstoque');
}

void mostrarQtdVendida(String nomeProduto, int qtdVendida) {
  print('$nomeProduto | Quantidade vendida: $qtdVendida');
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
