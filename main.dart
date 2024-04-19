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
      nome: 'Oleo de massagem 75ml', valor: 95.00, qtdEstoque: 20); // Produto

/* Declaração de objetos Produto */

  /* Testes método falar() */
  pularLinha();
  revendedor1.falar('Olá soi o consultor');
  cliente1.falar('Olá, quero comporar um produto');

  //Add dinheiro
  print(
      'O Cliente ${cliente1.nome} tem o seguinte saldo ${cliente1.dinheiro} antes do depósito');
  cliente1.adicionarDinheiro(1000);
  pularLinha();

//aqui o cliente compra o produto e nele já tem um método que chama o revendedor.venderProduto
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto2, revendedor1);

  pularLinha();
  print('Informações do Produto:');
  print('Receita gerada com o produto  ${produto1.nome}: ${produto1.verReceitaGerada().toStringAsFixed(2)}');
  print('Receita gerada com o produto  ${produto2.nome}: ${produto2.verReceitaGerada().toStringAsFixed(2)}');

  mostrarQtdProdutoEmEstoque(produto1.nome, produto1.qtdEstoque);
  mostrarQtdProdutoEmEstoque(produto2.nome, produto2.qtdEstoque);
  mostrarQtdVendida(produto1.nome, produto1.qtdVendida);
  mostrarQtdVendida(produto2.nome, produto2.qtdVendida);

  pularLinha();
  revendedor1.verResumo();
  cliente1.calcularTotalGasto();
  print('TOTAL GASTO CLIENTE: O total gasto foi de ${ cliente1.calcularTotalGasto().toStringAsFixed(2)} ');
  cliente1.calcularMediaProdutosComprados();
  print('Média GASTO CLIENTE: O total gasto foi de ${ cliente1.calcularMediaProdutosComprados().toStringAsFixed(2)} ');

}
