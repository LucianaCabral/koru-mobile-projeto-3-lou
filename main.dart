import 'classes/brinde.dart';
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
    nome: 'Miguel',
    cpf: '1111',
    dataNascimento: DateTime(2000, 12, 02),
  );

  /* Declaração de objetos Produto */
  Produto produto1 = Produto(
      nome: 'Colônia Floratta Flores Secretas 75ml',
      valor: 133.33,
      qtdEstoque: 10); // Produto

  Produto produto2 = Produto(
      nome: 'Oleo de massagem 75ml', valor: 95.00, qtdEstoque: 20);

  Produto produto3 = Produto(
      nome: 'Máscara de Cílios Make B. Explosion Effect 10g', valor: 99.90, qtdEstoque: 94);

  Brinde brinde = Brinde(nome: 'Sbonete de baunilha 90 g ', pontosNecessarios: 1, qtdEmEstoque: 40);
  Brinde brinde1 = Brinde(nome:'Pó Banana Translúcido 2 Intense 12g', pontosNecessarios: 1, qtdEmEstoque: 40);
  Brinde brinde2 = Brinde(nome:'Kit Esponjas de Maquiagem 3 unidades', pontosNecessarios: 1, qtdEmEstoque: 40);

/* Declaração de objetos Produto */

  /* Testes método falar() */
  pularLinha();
  revendedor1.falar('Olá soi o consultor');
  cliente1.falar('Olá, quero comporar um produto');

  //Add dinheiro
  imprimirSaldo(cliente1);
  cliente1.adicionarDinheiro(1000);
  pularLinha();

//aqui o cliente compra o produto e nele já tem um método que chama o revendedor.venderProduto
  cliente1.comprarProduto(produto3, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto2, revendedor1);

  cliente1.termometroDoHumor(Humor.cansada);

  pularLinha();
  print('Informações do Produto:');
  print('Receita gerada com o produto  ${produto1.nome}: ${produto1.verReceitaGerada().toStringAsFixed(2)}');
  print('Receita gerada com o produto  ${produto2.nome}: ${produto2.verReceitaGerada().toStringAsFixed(2)}');

  mostrarQtdProdutoEmEstoque(produto1.nome, produto1.qtdEstoque);
  mostrarQtdProdutoEmEstoque(produto2.nome, produto2.qtdEstoque);
  mostrarQtdVendida(produto1.nome, produto1.qtdVendida);
  mostrarQtdVendida(produto2.nome, produto2.qtdVendida);

  pularLinha();
  print('Resumo do revendedor');
  revendedor1.verResumo();
  pularLinha();
  print('Resumo do cliente');
  cliente1.verResumoCliente();
  pularLinha();
  print('Ver Produtos comprados e ordenados');
  cliente1.verProdutosComprados();
  pularLinha();
  cliente1.consultarTotalPontos();
  cliente1.trocarPontosPorBrinde(brinde1);
  cliente1.trocarPontosPorBrinde(brinde2);
  cliente1.ordenarBrindes();
  cliente1.verBrindes();
}
