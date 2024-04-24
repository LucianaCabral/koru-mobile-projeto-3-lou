enum Genero {
  masculino("Revendedor"),
  feminino("Revendedora"),
  outro("Ciente Revendedora");

  final String title;

  const Genero(this.title);

  @override
  String toString() => "Genero($title)";
}
