import 'randomcolor.dart';

class ButtonController{
  RandomColor buttonLeft = RandomColor();
  RandomColor buttonRight = RandomColor();
  void changeLeft(){
    buttonLeft.randomizeColor();
  }
  void changeRight(){
    buttonRight.randomizeColor();
  }
}