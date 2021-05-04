/*
* Metodos 
-override: Temos sobrescrita dos metodos da classe pai na classe herdeira

* Construtores
- Super se refere ao construtor da classe herdira

* Classes Abstratas
- Não podem ser instanciadas servem como modelo
- Metodos sem escopo devem ser sobrescritos nas classes herdiras!

 */

import 'Abelha.dart';
import 'Cao.dart';

void main() {
  print('13.0) Sobrescritas de Metodos , Atributos e construtores\n');

  var cao = Cao.selvagem('Dog', 'labrador', 'Macho');
  print(
      'nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  print(
      'desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
  cao.dormir();
  cao.alimentar();
  cao.reproduzir();
  cao.acao();
  print('${cao.nome} ${cao.docil ? 'está amigável' : 'não está amigavel'}');

  var abelha = Abelha.brasileira('2', 'blue');
  abelha.reproduzir();
  print('tamanho: ${abelha.tamanho} cor: ${abelha.cor}');
  print(
      '${abelha.cor} ${abelha.docil ? 'está amigável' : 'não está amigável'}');
}
