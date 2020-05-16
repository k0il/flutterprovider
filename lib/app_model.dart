import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Appmodel with ChangeNotifier {
  Appmodel();
  String _textCenter = "Text Center";

  void setDisplayText(String text) {
    _textCenter = text;
    notifyListeners();
  }

  String get getTextCenter => _textCenter;

  void gantiTextsatu() {
    _textCenter = "Ini Textnya 1";
    notifyListeners();
  }

  Future<void> gantiTextdua() async {
    var response = await http.get("https://k0il.net/testpost.php");
    if (response.statusCode == 200) {
      _textCenter = response.body.toString();
    }
    notifyListeners();
  }
}
