import 'dart:io';

void main(List<String> arguments) {
  try {
    print("A: ");
    String a = stdin.readLineSync()!;
    print("B: ");
    String b = stdin.readLineSync()!;

    if (double.tryParse(a) == null || double.tryParse(b) == null) {
      throw Error();
    }
    print('Result: ${(int.parse(a) * 3 + int.parse(a)) / 4 - int.parse(b)}');
  } catch (e) {
    print("Error!");
  }
}
