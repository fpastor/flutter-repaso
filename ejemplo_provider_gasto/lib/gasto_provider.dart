import 'package:flutter/material.dart';
import 'package:flutter_repaso_2/gasto.dart';

class GastoProvider extends ChangeNotifier {
  List<Gasto> gastos = [
    Gasto("Comida", 25),
    Gasto("Merienda", 25),
    Gasto("Cena", 25)
  ];

  void addGasto(Gasto gasto) {
    gastos.add(gasto);
    notifyListeners();
  }

  void removeItemAt(int index) {
    gastos.removeAt(index);
    notifyListeners();
  }
}
