enum Humor {
  animada("Que bom que você está animada!"),
  ansiosa("Pare um pouco, conte até mil e respire."),
  cansada("Recarregue as suas baterias e volte com força total!"),
  feliz("Quem bom que você está feliz!!"),
  triste("Não fique triste que ainda pode piorar. Te anima e siga em frente."),
  estressada("No stress! Fica na boa!");

  final String mensagem;

  const Humor(this.mensagem);
  @override
  String toString() => "Humor($mensagem)";
}