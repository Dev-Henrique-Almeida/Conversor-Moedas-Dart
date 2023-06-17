import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  final CurrencyModel selectedItem;

  CurrencyBox({
    Key? key,
    required this.items,
    required this.controller,
    required this.onChanged,
    required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final selectedItemIndex = items.indexWhere((item) => item == selectedItem);
    // final isValidSelection = selectedItemIndex != -1;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: selectedItem,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: items
                  .map(
                    (item) => DropdownMenuItem<CurrencyModel>(
                      value: item,
                      child: Text(item.name),
                    ),
                  )
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
