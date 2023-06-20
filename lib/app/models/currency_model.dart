class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.21, euro: 0.19, bitcoin: 0.0000078),
      CurrencyModel(
          name: 'Dolar', real: 4.77, dolar: 1.0, euro: 0.92, bitcoin: 0.000037),
      CurrencyModel(
          name: "Euro", real: 5.21, dolar: 1.09, euro: 1.0, bitcoin: 0.000041),
      CurrencyModel(
        name: 'Bitcoin',
        real: 12806047,
        dolar: 2685100,
        euro: 2459471,
        bitcoin: 1,
      ),
    ];
  }
}
