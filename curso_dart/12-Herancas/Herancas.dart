/*
 *Regras 
 - Uma classe pode ser somente ums heranças!

 * Construtores
 - Devem obedecer a ordem dos parametros
 - Parametros default devem ser nomeados ou posicionados
 - Tratamento e tipagem de parametros devem ser feito na classe herdeira!
 */

import 'Cao.dart';

void main() {
  print('12.0) Heranças de atributos, metodos e contrutores\n');

  var cao = Cao('Dog', 'labrador', 'macho', idade: '2', docil: false);
  print(
      'nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo}  idade: ${cao.idade} docil: ${cao.docil}');
  cao
    ..dormir()
    ..alimentar()
    ..acao();
  print('${cao.nome} ${(cao.docil) ? 'está amigável' : 'não está amigável'}');
}
