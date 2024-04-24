import '../enums/genero..dart';
import '../utils.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  final List<Produto> _produtosVendidos = <Produto>[];

  final double porcentagemDeLucro = 0.2;
  double totalProdutosVendidos = 0.0;

  Revendedor(super.genero, this.matricula,
      {required super.nome, required super.cpf, required super.dataNascimento});

  @override
  void falar(String texto) {
    String titulo = genero == Genero.masculino
        ? 'Revendedor'
        : genero == Genero.feminino
        ? 'Revendedora'
        : 'Cliente Revendedor';
    print('${titulo}  diz: ${texto}');
  }

  void venderProduto(Produto produto) {
    if (produto.qtdEstoque > 0) {
      produto.realizarVenda();
      _produtosVendidos.add(produto);
      totalProdutosVendidos += produto.valor;
    } else {
      throw Exception(
          "No momento não possuímos o produto $nome em estoque. MÉTODO VENDER PRODUTO NA CLASSE REVENDEDOR");
    }
  }

  double calcularTotalVendido() {
    return _produtosVendidos.fold(0, (total, produto) => total + produto.valor);
  }

  double calcularMediaProdutosVendidos() {
    return _produtosVendidos.isEmpty ? 0 : totalProdutosVendidos / _produtosVendidos.length;
  }

  double calcularLucro() => totalProdutosVendidos * porcentagemDeLucro;


  void verResumo() {
    double totalVendido = calcularTotalVendido();
    double media = calcularMediaProdutosVendidos();
    double lucroObtido = calcularLucro();
    imprimirResumo(nome, totalVendido, media, lucroObtido);
  }
}
