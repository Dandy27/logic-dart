/*
*Conceito 
-Interfaces são modelos para implementar metodos e atribuir em nossas classes

* Regras
- Ao implementar uma interface devemos utilizar todos os metodos e atributos
-No dart não tem  sintaxe para interface, pode ser uma classe concreta ou abstrata!
-Pode implementar mais de uma interface e deve sobreescrever todos metodos e atributos!
 */

import 'Candidato.dart';

void main() {
  print('15.0) Interface\n');

  var ciro =
      Candidato('Ciro Gomes', ideologia: 'Centro Esquerda', partido: 'PDT');
  ciro
    ..objetivo = 'Ganhar eleição'
    ..objetivoPessoais
    ..postagem = 'Vou acabar com a corrupção no Brasil'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
