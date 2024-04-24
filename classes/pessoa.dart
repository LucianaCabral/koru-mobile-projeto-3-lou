import '../enums/genero..dart';
import '../enums/humor.dart';

class Pessoa{
  String nome;
  String cpf;
  final DateTime dataNascimento;
  int? _idade;
  final Genero? genero;

  Pessoa(this.genero, {required this.nome, required this.cpf, required this.dataNascimento}){
    _idade = _calcularIdade();
  }

  int _calcularIdade() {
    int idade = DateTime.now().year - dataNascimento.year;
    if (DateTime.now().month < dataNascimento.month ||
        (DateTime.now().month == dataNascimento.month &&
            DateTime.now().day < dataNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void maiorIdade(){
    if (_idade! >= 18) {
      print('$nome tem $_idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $_idade anos, portanto é menor de idade.');
    }
  }

  @override
  void falar(String texto){
    print('${this.nome} diz: ${texto}');
  }

  void termometroDoHumor(Humor humor) {
    Map<Humor, String> mensagens = {
      Humor.animada: 'Que bom que você está animada!',
      Humor.ansiosa: 'Pare um pouco, conte até mil e respire.',
      Humor.cansada: 'Recarregue as suas baterias e volte com força total!',
      Humor.feliz: 'Quem bom que você está feliz!!',
      Humor.triste: 'Não fique triste que ainda pode piorar. Te anima e siga em frente.',
      Humor.estressada: 'No stress! Fica na boa!',
    };

    String humorDoDia = mensagens[humor] ?? '';
    print('$nome, ${humorDoDia}');
  }
}
