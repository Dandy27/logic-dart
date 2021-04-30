///
///Uma Clousure ocorre quando uma função é declarada dentro do corpo de outra função!
///Podendo retornar as variáveis locais e da função superior
///

funcaoClosures() {
  print('06.5.1) Closrers sem retorno');

  var saudacao = (String nome) {
    var mensagem = (dynamic complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo');
  };
  saudacao('Dandy');

  print('06.5.1 Closures com Retorno');

  Function somar(int valorA) {
    print(valorA);
    return (double valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontoDez = porcentagem(.9);
  var descontoVinte = porcentagem(0.8);
  print(descontoDez(1254.99));
  print(descontoVinte(12000));

  print('06.5.2 Closures com Objetos\n');

  ///
  ///Criar uma closure na qual vou passar um nome  e uma descrição e ela vai
  ///me retornar um objeto organizados por id em ordem crescente
  ///
  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, dynamic descricao) {
      //configurar o retorno
      // return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome descricao: $descricao'; // retorno array
      // return {
      //   'id': (++id).toString().padLeft(2, '0'),
      //   'nome': nome,
      //   'descricao': descricao
      // };
      return Objeto.fromMap({
        'id': (++id).toString().padLeft(2, '0'),
        'nome': nome,
        'descricao': descricao
      });
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Dandy', 27.00)];
  listaObjetos.add(objeto('Iphne', 3000.00));
  listaObjetos.add(objeto('Monitor', 29.00));

  for (var objeto in listaObjetos) {
    // print(objeto.substring(7));
    // print(objeto.map((c, v) => MapEntry(c, (v is double) ? '${descontoDez(v)}' : v)));
    print((objeto.descricao is num) ? descontoVinte(objeto.descricao).toStringAsFixed(2) : objeto.descricao);
  }
}

class Objeto {
  String? id;
  String? nome;
  dynamic descricao;

  Objeto({
    this.id,
    this.nome,
    this.descricao,
  });
  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

main() {
  funcaoClosures();
}
