/**
 * Задание №3.
 * Пользователь вводит с клавиатуры целочисленный список. Напишите
 * рекурсивную функцию, возвращающую максимальное значение из списка.
 * Полученный результат выведите в терминал.
 */

import "dart:io";

void main() {
  print("Enter you List<int>:");
  String userNumbers = stdin.readLineSync()!;
  Iterable<int> numbers = userNumbers.split(",").map((el) => int.parse(el));

  print("Max value: ${getMaxNumberFromList(numbers.toList(), numbers.length - 1, 0)}");
}

int getMaxNumberFromList(List<int> numbers, int i, int maxValue) {
  if (numbers[i] > maxValue) {
    maxValue = numbers[i];
  }

  return i == 0 ? maxValue : getMaxNumberFromList(numbers, --i, maxValue);
}
