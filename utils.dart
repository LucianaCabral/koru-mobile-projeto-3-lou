void pularLinha() {
  print('\n');
}

void mostrarQtdProdutoEmEstoque(String nomeProduto, int qtdEstoque) {
  print('$nomeProduto | Quantidade em estoque: $qtdEstoque');
}

void mostrarQtdVendida(String nomeProduto, int qtdVendida) {
  print('$nomeProduto | Quantidade vendida: $qtdVendida');
}

void imprimirInformacao(String informacao, double totalvendido) {
  print("O $informacao foi de ${totalvendido.toStringAsFixed(2)} reais.");
}

void imprimirResumo(
    String nome, double totalVendido, double media, double lucroObtido) {
  print(
      "O total vendido por $nome foi de ${totalVendido.toStringAsFixed(2)} reais "
      "e a média aritmética de valor dos produtos vendidos é de ${media.toStringAsFixed(2)} reais. "
      "O lucro recebido foi de ${lucroObtido.toStringAsFixed(2)} reais");
}
