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

    double result = (3 * sin(n) - 15) / sqrt(pow(n, 5));

    print('Result: ${result}');

  } catch (e) {
    print("Error!");
  }
}
