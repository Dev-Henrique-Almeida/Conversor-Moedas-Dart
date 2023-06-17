import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency =
      CurrencyModel(name: '', real: 0, dolar: 0, euro: 0, bitcoin: 0);
  late CurrencyModel fromCurrency =
      CurrencyModel(name: '', real: 0, dolar: 0, euro: 0, bitcoin: 0);

  final TextEditingController toText;
  final TextEditingController fromText;

  HomeController(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;
    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
