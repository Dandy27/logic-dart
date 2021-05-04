
import 'Mamifero.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;
  Cao.domestico(this.nome, this.raca, String sexo,
      {String idade = 'indefinida', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, String sexo,
      {String idade = 'indefinida', bool docil = false})
      : super.placentarios(sexo, idade, docil: docil);

  @override // metodos sem escopo em classes abstratas devem ser sobreescritos
  void dormir() {
    print('Dorme como um cão!');
  }

  void acao() {
    print('Late como um cao');
  }

  // toda classe extends de Object, ao usar a função print toString retorna a (Instance of 'Object')

  @override // a sintaxe é opcional "override"
  void alimentar() {
    super.alimentar(); // emplementa o escopo do metodo herdado(super);
    print('cão!');
  }

  @override
  void reproduzir() {
    print('Reproduz com um cão');
  }
}
