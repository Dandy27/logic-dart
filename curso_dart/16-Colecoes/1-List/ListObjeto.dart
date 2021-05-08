











import 'Caracteristica.dart';
import 'Carro.dart';
import 'Multa.dart';
import 'Pessoa.dart';
import 'Proprietario.dart';
import 'Venda.dart';
import 'Vendedor.dart';

void main() {
  print('16.1.7) List manipuçando Objetos');

  Pessoa p1 = Pessoa('Dandy', 'Barbosa', identidade: 123456789);
  Pessoa p2 = Pessoa('Lela', 'Barbosa', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa(
    'Doug',
    'Barbosa',
    identidade: 987654321,
  ));

  for (var i = 0; i < pessoas.length; i++) {
    print(
        'for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');

    print('');

    for (var pessoa in pessoas) {
      print(
          'for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
    }
  }
  print('');
  pessoas.forEach(
      (e) => print('foreach: ${e.nome} ${e.sobrenome} id: ${e.identidade}'));

  print('\n16.8) List ordenando Objetos');

  List<Vendedor> vendedores = [];
  // int valorInicial = 0;
  vendedores.add(Vendedor('Paulo', [
    Venda(
      'IphoneX',
      4199.99,
    ),
    Venda('MacbookPro', 5300.00),
    Venda('Galaxs10', 3500.00)
  ]));
  vendedores.add(Vendedor('Nayla', [
    Venda(
      'Iphone8',
      2199.99,
    ),
    Venda('Dell', 2300.00),
    Venda('Motorolla', 1500.00)
  ]));
  vendedores.add(Vendedor('Ana', [
    Venda(
      'Hp',
      2399.99,
    ),
    Venda('Acer', 4300.00),
    Venda('Blue', 3300.00)
  ]));
  //organizar lista de vendas pela soma total
  // vendedores.sort((b, a) => (a.vendas
  //     .fold(valorInicial, (anterior, atual) => anterior + atual.preco)
  //     .compareTo(b.vendas
  //         .fold(valorInicial, (anterior, atual) => anterior + atual.preco))));

  // vendedores
  //     .forEach((e) => e.vendas.sort((b, a) => a.preco.compareTo(b.preco)));

  // vendedores.forEach((e) => print(
  //     'Vendedor #${e.nome} \t ${e.vendas.length} vendas \t totalizando ${e.vendas}'));

  print('\n16.1.9) List escopo de loops em Objetos\n ');
  List<Proprietario> proprietarios = [];
  proprietarios.add(
    Proprietario(
      'Dandy',
      'Nelson de Sousa',
      [
        Carro(
            'Honda',
            'Civic',
            'qawes12345',
            Caracteristica(
              'Passeio',
              5,
              130,
              'Gas',
            ),
            multas: [
              Multa('Excesso de velocidade', 'Gravissima', 7),
              Multa(
                "Estacionar local",
                'Grave',
                5,
              ),
            ]),
        Carro(
            'Fusca',
            'Antigo',
            'qawes12345',
            Caracteristica(
              'Passeio',
              4,
              70,
              'Gas',
            ),
            multas: [
              Multa('Excesso de velocidade', 'Gravissima', 7),
              Multa(
                "Estacionar local",
                'Grave',
                5,
              ),
            ])
      ],
    ),
  );
  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas
      .sort((a, b) => a.ponto.compareTo(b.ponto)))); //multas em ordem crescente

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros) {
      carro.multas.forEach((e) {
        print(
            '${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristicas.tipo} \t ${e.descricao} ${e.tipo} - ${e.ponto} pontos');
      });
    }
  }
}
