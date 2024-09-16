import 'dart:io';
import "./models/pessoa.dart";

void main() {
  try {
    final name = getData("Informe o seu nome: ");
    final peso = double.tryParse(getData("$name Informe o seu peso: ")) ?? 0.0;
    final altura = double.tryParse(getData("$name Informe a sua altura, ex: 1.75")) ?? 0.0;
    final pessoa = Pessoa(nome: name, altura: altura, peso: peso);
    print("$name, seu IMC está em ${pessoa.getImc}, qualificado como ${pessoa.getImcLevel}");
  } catch (e) {
    print("Houve um problema: $e");
  }
}


String getData(String message) {
  print(message);
  return stdin.readLineSync() ?? "";
}