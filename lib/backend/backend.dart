import 'package:flutter/material.dart';
import 'package:circleandboxscreen/backend/button.dart';

class Backend extends ChangeNotifier {
  ButtonController bc = ButtonController();
  Color leftColor = Colors.blue;
  Color rightColor = Colors.red;
  // Khi ban click vao nut ben trai thi doi mau cua nut ben phai
  // va ngc lai click vao nut ben phai lam doi mau cua nut ben trai.
  void changeLeftColor() {
    bc.changeLeft();
    leftColor =
        Color.fromRGBO(bc.buttonLeft.r, bc.buttonLeft.g, bc.buttonLeft.b, 1.0);
    notifyListeners();
  }

  void changeRightColor() {
    bc.changeRight();
    rightColor = Color.fromRGBO(
        bc.buttonRight.r, bc.buttonRight.g, bc.buttonRight.b, 1.0);
    notifyListeners();
  }
}
