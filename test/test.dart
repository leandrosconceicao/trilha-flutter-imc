import "package:test/test.dart";

import "../bin/models/pessoa.dart";

void main() {
  group("Testes automatizados", () {
    test("Espero que seja gerado uma excepção em caso de instanciação sem valores definidos", () {
      expect(() => Pessoa(nome: "", altura: 0.0, peso: 0.0), throwsException);
    });
    test("Espero que seja gerado uma excepção em caso de instanciação sem valores definidos", () {
      expect(() => Pessoa(nome: "Leandro", altura: 0.0, peso: 0.0), throwsException);
    });
    test("Espero que seja gerado uma excepção em caso de instanciação sem valores definidos", () {
      expect(() => Pessoa(nome: "Leandro", altura: 1.0, peso: 0.0), throwsException);
    });
    test("Espero que seja gerado uma excepção caso os valores sejam informados incorretamente", () {
      expect(() => Pessoa(nome: "Leandro", altura: 176, peso: 10.0), throwsException);
    });
    test("Espero que não hava erros no instanciamento da classe", () {
      expect(() => Pessoa(nome: "Leandro", altura: 1.76, peso: 80.0), returnsNormally);
    });
  });
}
