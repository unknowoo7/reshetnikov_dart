import 'dart:io';
import 'dart:math';

void main() {
  int z = int.parse(stdin.readLineSync()!);
  int n = 3;

  int sum = 0;
  for (var i = 1; i < z; i++) sum += i;

  double res = (21 + sum * sqrt(3 * n)) / (3 / sin(n));
  print("Result: ${res}");
}
