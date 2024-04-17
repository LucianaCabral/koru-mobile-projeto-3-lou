import 'classes/cliente.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'enums/enums.dart';
import 'utils.dart';

main() {
  /* Declaração de objetos Revendedor */
  Revendedor revendedor1 = Revendedor(Genero.masculino, "123456",
      nome: "Jorge", cpf: "064646464", dataNascimento: DateTime(2000, 12, 02));

  // Criando um cliente
  Cliente cliente1 = Cliente(
    null,
    100,
    nome: 'Heitor',
    cpf: '1111',
    dataNascimento: DateTime(2000, 12, 02),
  );
  Cliente cliente2 = Cliente(
    null,
    100,
    nome: 'Miguek',
    cpf: '1111',
    dataNascimento: DateTime(2000, 12, 02),
  );

  /* Declaração de objetos Produto */
  Produto produto1 = Produto(
      nome: 'Colônia Floratta Flores Secretas 75ml',
      valor: 133.33,
      qtdEstoque: 10); // Produto

  Produto produto2 = Produto(
      nome: 'Oleo de massagem 75ml',
      valor: 95.00,
      qtdEstoque: 20); // Produto

/* Declaração de objetos Produto */

  /* Testes método falar() */
  pularLinha();
  revendedor1.falar('Olá soi o consultor');
  cliente1.falar('Olá, quero comporar um produto');

  //Add dinheiro
  print('O Cliente ${cliente1.nome} tem o seguinte saldo ${cliente1.dinheiro} antes do depósito');
  cliente1.adicionarDinheiro(1000);
  pularLinha();

//aqui o cliente compra o produto e nele já tem um método que chama o revendedor.venderProduto
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto2, revendedor1);

  // print('valor produto: ${produto1.valor} | revendedor: ${revendedor1.nome} |  Saldo final cliente ${cliente1.nome}: ${cliente1.dinheiro.toStringAsFixed(2)}');
  // pularLinha();
  // mostrarQtdProdutoEmEstoque(produto1.nome, produto1.qtdEstoque);
  // mostrarQtdVendida(produto1.nome, produto1.qtdVendida);

  pularLinha();
  print('Informações do Produto:');
  print('Receita gerada com o produto  ${produto1.nome}: ${produto1.verReceitaGerada()
      .toStringAsFixed(2)}');
  print('Receita gerada com o produto  ${produto2.nome}: ${produto2.verReceitaGerada()
      .toStringAsFixed(2)}');
  print('Produto em estoque do produto ${produto1.nome}: ${produto1.qtdEstoque}');
  print('Produto em estoque do produto ${produto2.nome}: ${produto2.qtdEstoque}');

  print('TOTAL VENDIDOS: ${revendedor1.calcularTotalVendido().toStringAsFixed(2)}');


      // Calcular a média dos produtos vendidos pelo revendedor1
  double mediaProdutosVendidos = revendedor1.calcularMediaProdutosVendidos();
  print('A média dos valores dos produtos vendidos pelo revendedor1 é: ${mediaProdutosVendidos.toStringAsFixed(2)}');
  revendedor1.calcularLucro();
  print('Lucro sobre a venda é: ${revendedor1.calcularLucro().toStringAsFixed(2)}');
}
