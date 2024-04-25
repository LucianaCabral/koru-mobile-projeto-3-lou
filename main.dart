  import 'classes/brinde.dart';
  import 'classes/cliente.dart';
  import 'classes/pessoa.dart';
import 'classes/transacoes/compra.dart';
  import 'classes/produto.dart';
  import 'classes/revendedor.dart';
  import 'classes/transacoes/venda.dart';
  import 'enums/genero..dart';
  import 'enums/humor.dart';
  import 'utils.dart';

  main() {

    Pessoa pessoa = Pessoa( null, nome: "Ligia", cpf:"90999", dataNascimento: DateTime.parse('9999-99-99'));
    /* Declaração de objetos Revendedor */
    Revendedor revendedor1 = Revendedor(Genero.masculino, "123456",
        nome: "Jorge", cpf: "064646464", dataNascimento: DateTime(2000, 12, 02));

    Revendedor revendedor2 = Revendedor(Genero.feminino, "123456",
        nome: "Ana", cpf: "064646464", dataNascimento: DateTime(2000, 12, 02));

    // Criando um cliente
    Cliente cliente1 = Cliente(
      null,
      100,
      nome: 'Miguel',
      cpf: '1111',
      dataNascimento: DateTime(2000, 12, 02),
    );
    Cliente cliente2 = Cliente(
      null,
      100,
      nome: 'Sandoval',
      cpf: '1111',
      dataNascimento: DateTime(2000, 12, 02),
    );

    /* Declaração de objetos Produto */
    Produto produto1 = Produto(
        nome: 'Colônia Floratta Flores Secretas 75ml',
        valor: 133.33,
        qtdEstoque: 5); // Produto

    Produto produto2 = Produto(
        nome: 'Oleo de massagem 75ml', valor: 100.00, qtdEstoque: 20);

    Brinde brinde1 = Brinde(nome:'Pó Banana Translúcido 2 Intense 12g', pontosNecessarios: 1, qtdEmEstoque: 40);
    Brinde brinde2 = Brinde(nome:'Kit Esponjas de Maquiagem 3 unidades', pontosNecessarios: 1, qtdEmEstoque: 40);

  /* Declaração de objetos Produto */

    /* Testes método falar() */
    pularLinha();
    revendedor1.falar('Olá sou o consultor');
    cliente1.falar('Olá, quero comporar um produto');

    //Add dinheiro
    imprimirSaldo(cliente1);
    cliente1.adicionarDinheiro(1000);
    pularLinha();

   /**Compra para cliente2**/
    Compra compraCliente1 = Compra();
    compraCliente1.comprarProduto(cliente1, produto1, revendedor1);
    compraCliente1.comprarProduto(cliente1, produto2, revendedor2);
    pularLinha();

    compraCliente1.verResumo(revendedor1.nome);
    pularLinha();
    compraCliente1.verResumoCliente();
    compraCliente1.verProdutosComprados();
    cliente1.consultarlPontos();
    cliente1.trocarPontosPorBrinde(brinde1);
    cliente1.trocarPontosPorBrinde(brinde2);

    pularLinha();
    /**Compra para cliente2**/
    cliente2.falar("Boa tarde");
    revendedor2.falar("Boa tarde, sou consultora");
    cliente2.falar("Gostaria de realizar a compra de um produto");

    imprimirSaldo(cliente2);
    cliente2.adicionarDinheiro(800);
    pularLinha();
    Compra compraCliente2 = Compra();
    compraCliente2.comprarProduto(cliente2, produto2, revendedor2);
    compraCliente2.comprarProduto(cliente2, produto2, revendedor2);
    compraCliente2.comprarProduto(cliente2, produto2, revendedor2);
    compraCliente2.comprarProduto(cliente2, produto2, revendedor2);
    pularLinha();

    compraCliente2.verResumo(revendedor2.nome);
    pularLinha();
    compraCliente2.verResumoCliente();
    pularLinha();
    cliente2.consultarlPontos();
    cliente2.trocarPontosPorBrinde(brinde2);
    cliente2.ordenarBrindes();
  }

