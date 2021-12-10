import 'dart:math';

//random mau tu 0-255.
class RandomColor {
  int r = 0;
  int g = 0;
  int b = 0;
  Random random = Random();
  RandomColor() {
    randomizeColor();
  }

  void randomizeColor() {
    r = random.nextInt(255);
    g = random.nextInt(255);
    b = random.nextInt(255);
  }
}
