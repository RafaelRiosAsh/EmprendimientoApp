import 'package:flutter/material.dart';

class ChangePageProvider extends ChangeNotifier {
  int _selectedIndex = 0; // Current page index

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
