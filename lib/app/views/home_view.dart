import 'package:conversor_moeda/app/components/currency_box.dart';
import 'package:conversor_moeda/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  late HomeController homeController;
  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    homeController = HomeController(toText, fromText);
    homeController.toCurrency = homeController.currencies.firstWhere(
      (currency) => currency.name == 'Real',
      orElse: () => homeController.currencies.first,
    );
    homeController.fromCurrency = homeController.currencies.firstWhere(
      (currency) => currency.name == 'Dolar',
      orElse: () => homeController.currencies.first,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 20),
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/logo1.png',
                    width: 170,
                    height: 170,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Valores referentes á 19/06/23',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                  controller: homeController.toText,
                ),
                const SizedBox(
                  height: 20,
                ),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(
                      () {
                        homeController.fromCurrency = model!;
                      },
                    );
                  },
                  controller: homeController.fromText,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    homeController.convert();
                  },
                  child: const Text('CONVERTER'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
