import 'Caracteristica.dart';
import 'Multa.dart';

class Carro {
  String marca;
  String modelo;
  String placa;
  Caracteristica caracteristicas;
  late List<Multa> multas;
  Carro(this.marca, this.modelo, this.placa, this.caracteristicas,
      {required List<Multa> multas}) {
    this.multas = multas;
  }
}