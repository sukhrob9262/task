import 'dart:math';

class NaturalNumber {
  int _number;
  NaturalNumber(this._number);

  bool get isPositive => _number > 0;

  bool get isOdd => _number.isOdd;

  set number(int number){
    if(number>10){
      _number=number;
    }
  }

  void isPrime() {
    bool check = false;
    for (int i = 2; i <= sqrt(_number); i++) {
      if (_number % i == 0) {
        check = true;
      }
    }
    if (!check) {
      print("Tub son");
    } else {
      print("Tub son emas");
    }
  }

  void mukammal() {
    int s = 0;
    for (int i = 1; i < _number; i++) {
      if (_number % i == 0) {
        s += i;
      }
    }
    if (s == _number) {
      print("Mukammal son");
    } else {
      print("Mukammal son emas");
    }
  }

  void fact() {
    int s = 1;
    for (int i = 1; i <= _number; i++) {
      s *= i;
    }
    print('$_number Factoriali -> $s');
  }

  void ekuk(int a){
    int ekb=_number.gcd(a);
    int ekk=_number*a~/ekb;
    print("Ekuk -> $ekk");
  }

}
