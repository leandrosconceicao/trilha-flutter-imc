class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;

  String get nome => _nome;

  double get peso => _peso;

  double get altura => _altura;

  Pessoa._(
    String nome,
    double altura,
    double peso,
  ) : _nome = nome, _altura = altura, _peso = peso;

  factory Pessoa({
    required String nome,
    required double altura,
    required double peso,
  }) {
    if (nome.isEmpty) {
      throw Exception("Nome deve ser informado");
    }
    if (altura <= 0) {
      throw Exception("Altura deve ser informada");
    }
    if (peso <= 0) {
      throw Exception("Peso deve ser informado");
    }
    if (altura > peso) {
      throw Exception("Valores informados são inválidos - PESO INFORMADO ($peso) | ALTURA INFORMADA ($altura)");
    }
    return Pessoa._(nome, altura, peso);
  }

  double get _getImc {
    return _peso / (_altura * _altura);
  }

  String get getImc => _getImc.toStringAsFixed(2);

  String get getImcLevel {
    return switch (_getImc) {
      < 16 => "Magreza grave",
      >= 16 && < 17 => "Magreza moderada",
      >= 17 && < 18.5 => "Magreza leve",
      >= 18.5 && < 25 => "Saudável",
      >= 25 && < 30 => "Sobrepeso",
      >= 30 && < 35 => "Obesidade Grau I",
      >= 35 && < 40 => "Obesidade Grau II",
      _ => "Obesidade Grau III (mórbida)"
    };
  }
  
}