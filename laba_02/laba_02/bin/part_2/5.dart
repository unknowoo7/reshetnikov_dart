import 'dart:convert';
import 'dart:io';

void main() {
  try {
    Iterable<int> list = [];
    print("Enter value:");
    String value = stdin.readLineSync()!;
    list = value.split(', ').map((el) => int.parse(el));
    int sumElems = list.reduce((value, element) => value + element);
    bool isPrintConsole = (list.first == list.last) && sumElems > 40;

    if (isPrintConsole) {
      print("Result: ${list}");
    } else {
      print("Pattern no matched");
    }

  } catch(e) {
    print(e);
  }

}
