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
          name: 'Real',
          real: 1.0,
          dolar: 0.21,
          euro: 0.19,
          bitcoin: 0.0000079), // [0]
      CurrencyModel(
          name: 'Dolar',
          real: 4.82,
          dolar: 1.0,
          euro: 0.91,
          bitcoin: 0.000038), // [1] ne isso?
      CurrencyModel(
          name: "Euro",
          real: 5.29,
          dolar: 1.10,
          euro: 1.0,
          bitcoin: 0.000042), // [2]
      CurrencyModel(
        name: 'Bitcoin',
        real: 12717150,
        dolar: 2637020,
        euro: 2405885,
        bitcoin: 1,
      ), // CurrencyModel
    ]; // <<CurrencyModel>L]
  }
}
