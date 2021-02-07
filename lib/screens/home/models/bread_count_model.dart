import 'package:flutter/cupertino.dart';

class SelectedBreadInfo with ChangeNotifier {
  int _breadCount = 1;

  int get breadCount => _breadCount;

  void incrementBreadCount() {
    _breadCount++;
    notifyListeners();
  }

  void decreamentBreadCount() {
    if (_breadCount != 1) _breadCount--;
    notifyListeners();
  }

  void resetBreadCount() {
    _breadCount = 0;
    notifyListeners();
  }
}
