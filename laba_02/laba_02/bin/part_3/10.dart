import 'dart:io';
import 'dart:math';

void main() {
  print("A: ");
  int a = int.parse(stdin.readLineSync()!);
  print("B: ");
  int b = int.parse(stdin.readLineSync()!);
  print("C: ");
  int c = int.parse(stdin.readLineSync()!);

  var D = pow(b, 2) - 4 * a * c;

  if (D > 0) {
    double x1 = (-1 * b - sqrt(D)) / (2 * a);
    double x2 = (-1 * b + sqrt(D)) / (2 * a); 
    print("X1: ${x1}; X2: ${x2}");
  }

  if (D == 0) {
    double x1 = (-1 * b) / (2 * a);
    print("X1: ${x1}");
  }

  if (D < 0) {
    print("There are no roots");
  }
}

/**
 * Пользователь вводит с клавиатуры 3 значения (a, b, c). 
 * Решите следующее квадратное уравнение ax2-bx+2c=0 и выведите в терминал полученные корни.
 */