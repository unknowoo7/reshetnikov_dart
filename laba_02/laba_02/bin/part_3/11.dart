/**
 * Пользователь вводит с клавиатуры 2 значения (x и y), представляющие
 * собой координату точки в пространстве. Центр круга находится в центре
 * координат (0, 0), а его радиус равен 5. Проверьте, принадлежит ли данная
 * точка кругу и выведите в терминал «YES» или «NO» (без кавычек) в
 * зависимости от результата проверки. Реализуйте 2 версии программы с
 * разными подходами (if и switch).
*/

import 'dart:io';
import 'dart:math';

void main() {
  print("Programm #1");
  programm_1();

  print("Programm #2");
  programm_2();
}

void programm_1() {
  print('Введите координату x:');
  double x = double.parse(stdin.readLineSync()!);

  print('Введите координату y:');
  double y = double.parse(stdin.readLineSync()!);

  double r = 5;

  if (pow(x, 2) + pow(y, 2) <= pow(r, 2)) {
    print('YES');
  } else {
    print('NO');
  }
}

void programm_2() {
  print('Введите координату x:');
  double x = double.parse(stdin.readLineSync()!);

  print('Введите координату y:');
  double y = double.parse(stdin.readLineSync()!);

  double r = 5;
  String result = (pow(x, 2) + pow(y, 2) <= pow(r, 2)) ? 'YES' : 'NO';

  switch (result) {
    case 'YES':
      print('YES');
      break;
    case 'NO':
      print('NO');
      break;
  }
}
