import 'package:flutter/cupertino.dart';

class SelectedBreadInfo with ChangeNotifier {
  int _breadCount = 1;
  bool _isDisabled = false;

  bool get isDisabled => _isDisabled;
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

  void toggleDisabled() {
    _isDisabled = !isDisabled;
    notifyListeners();
  }
}
