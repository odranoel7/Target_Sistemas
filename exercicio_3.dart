void main() {
  List<double> faturamentos = [
    1200,
    0,
    1500,
    0,
    1800,
    2000,
    1700,
    0,
    2500,
    1000,
    0,
    3000,
    0,
    500
  ];

  List<double> diasComFaturamento = faturamentos.where((f) => f > 0).toList();

  double menorFaturamento =
      diasComFaturamento.reduce((curr, next) => curr < next ? curr : next);
  double maiorFaturamento =
      diasComFaturamento.reduce((curr, next) => curr > next ? curr : next);

  double mediaFaturamento =
      diasComFaturamento.reduce((a, b) => a + b) / diasComFaturamento.length;

  int diasAcimaDaMedia =
      diasComFaturamento.where((f) => f > mediaFaturamento).length;

  print(
      'O menor valor de faturamento ocorrido em um dia do ano: $menorFaturamento');
  print(
      'O maior valor de faturamento ocorrido em um dia do ano: $maiorFaturamento');
  print(
      'Número de dias no ano em que o valor de faturamento diário foi superior à média anual: $diasAcimaDaMedia');
}
