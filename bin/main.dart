import 'package:task/naturalnumber.dart';

void main() {
// NaturalNumber number = NaturalNumber(20);
// print(number.isPositive);
// print(number.isOdd);
//
// number.number=31;
// print(number.isPositive);
// print(number.isOdd);
  //front11(list1: [4, 5], list2: [1, 2]);
  //makeMiddle([7, 1, 2, 3, 4]);
  //print(sum28([2, 3, 2, 2, 4, 2]));
  //print(bobThere("bob"));
  //endOther("abc", "abXabc");
  //print(oneTwo("abc"));
  //print(bunnyEars(4));
}

int bunnyEars(int n) {
  if (n == 0) {
    return 0;
  }
  return 2 + bunnyEars(n - 1);
}

String oneTwo(String str) {
  String result = '';
  while (str.length > 2) {
    String subStr = str.substring(0, 3);
    result += subStr.substring(1) + subStr[0];
    str = str.substring(3);
  }
  return result;
}

void endOther(String txt1, String txt2) {
  if (txt1.length > txt2.length) {
    if (txt1.toLowerCase().endsWith(txt2.toLowerCase())) {
      print(true);
    } else {
      print(false);
    }
  } else if (txt1.length < txt2.length) {
    if (txt2.toLowerCase().endsWith(txt1.toLowerCase())) {
      print(true);
    } else {
      print(false);
    }
  } else {
    if (txt1.length == txt2.length &&
        txt1.toLowerCase() == (txt2.toLowerCase())) {
      print(true);
    } else {
      print(false);
    }
  }
}

bool bobThere(String txt) {
  final reg = RegExp(r"^b.b$");
  return reg.hasMatch(txt);
}

bool sum28(List list) {
  int count = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == 2) {
      count++;
    }
  }
  if (count == 4) {
    return true;
  } else {
    return false;
  }
}

void makeMiddle(List list) {
  if (list.length.isEven) {
    List newList = [];
    newList.addAll([list[list.length ~/ 2 - 1], list[list.length ~/ 2]]);
    print(newList);
  } else {
    print('List uzunligi juft emas');
  }
}

void front11({var list1, var list2}) {
  var list3 = [];
  if (list1.isNotEmpty && list2.isNotEmpty) {
    list3.addAll([list1[0], list2[0]]);
  } else if (list1.isNotEmpty) {
    list3.add(list1[0]);
  } else {
    list3.add(list2[0]);
  }

  print(list3);
}
