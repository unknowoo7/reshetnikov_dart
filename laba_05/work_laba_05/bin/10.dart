/**
 * Задание 10.
 * Пользователь вводит с клавиатуры два числа. Напишите рекурсивную
 * функцию, возвращающую их наибольший общий делитель. Полученный
 * результат выведите в терминал.
 */

import "dart:io";

void main() {
  print('Введите первое число:');
  int? num1 = int.parse(stdin.readLineSync()!);

  print('Введите второе число:');
  int? num2 = int.parse(stdin.readLineSync()!);

  int result = getMaxNumberDiv(num1, num2);
  print('Наибольший общий делитель: $result');
}

int getMaxNumberDiv(int num_1, int num_2) {
if (num_2 == 0) {
    return num_1;
  }
  return getMaxNumberDiv(num_2, num_1 % num_2);
}
