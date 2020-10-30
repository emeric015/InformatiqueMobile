import 'package:convertisseur_devises/styles.dart';
import 'package:flutter/material.dart';

class ConvertisseurSaisieWidget extends StatelessWidget {
  final Function setValueCallback;
  final Function f2;

  ConvertisseurSaisieWidget(this.setValueCallback, this.f2);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: ((String newValue) {
        var val = double.parse(newValue);
        print('hello ' + val.toString());
        this.setValueCallback(val);
      }),
    );
  }
}
