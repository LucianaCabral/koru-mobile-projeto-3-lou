enum Erro {
  Produto("No momento não possuímos o produto em estoque."),
  Cliente("Falha na troca"),
  Desconhecido("erro desconhecido");

  final String mensagem;

  const Erro(this.mensagem);
  @override
  String toString() => "$mensagem";
}