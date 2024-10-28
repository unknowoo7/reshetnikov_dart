import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    print("N: ");
    String valueInput = stdin.readLineSync()!;

    if (double.tryParse(valueInput) == null) {
      throw Error();
    }

    num n = double.parse(valueInput);

    double result = (n - 2) / (sqrt(pow(n,3)));

    print('Result: ${result}');

  } catch (e) {
    print("Error!");
  }
}
