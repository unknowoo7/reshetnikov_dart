/***
 * Пользователь вводит с клавиатуры целочисленный список. Напишите
 * функцию, которая возвращает его максимальное значение. Полученный
 * результат выведите в терминал.
 */


import 'dart:io';

void main() { 
  print("Enter you List<int>:");
  String user_number = stdin.readLineSync()!;
  Iterable<int> list_numbers = user_number.split(",").map((el) => int.parse(el));
  print("Max number in LIST: ${getMaxNumber(list_numbers.toList())}");
}

int getMaxNumber(List<int> list_numbers) {
  list_numbers.sort();
  int maxNumber = list_numbers[list_numbers.length - 1];
  return maxNumber;
}
