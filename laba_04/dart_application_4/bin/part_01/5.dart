/**
 * Пользователь вводит с клавиатуры целочисленный список и число val.
 * Напишите функцию, возвращающую номер индекса, по которому хранится
 * значение val. Если элемента с искомым значением нет в списке – верните
 * null. Полученный результат выведите в терминал.
*/

import 'dart:io';

void main() {
  print("Enter list: ");
  List<int> user_list =
      (stdin.readLineSync()!).split(",").map((el) => int.parse(el)).toList();

  print("Enter index: ");
  int index = int.parse(stdin.readLineSync()!);

  int? result = getIndexEl(user_list, index);
  print("Desired val: ${result}");
}

int? getIndexEl(List<int> list, int index) {
  try {
    return list[index];
  } catch (e) {
    return null;
  }
}
