import 'dart:io';

void main(List<String> arguments) {
  try {
    print("A: ");
    String a = stdin.readLineSync()!;
    print("B: ");
    String b = stdin.readLineSync()!;
    print("C: ");
    String c = stdin.readLineSync()!;

    if (double.tryParse(a) == null ||
        double.tryParse(b) == null ||
        double.tryParse(c) == null) {
      throw Error();
    }
    print('Result: ${int.parse(a) + int.parse(b) + int.parse(c)}');
  } catch (e) {
    print("Error!");
  }
}
