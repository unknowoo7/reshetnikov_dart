/**
 * Пользователь вводит с клавиатуры два целочисленных списка.
 * Напишите функцию, которая возвращает сумму элементов списков.
 * Полученный результат выведите в терминал.
 */

import 'dart:io';

void main() { 
  print("Enter you #1 List<int>: ");
  Iterable<int> user_list_1 = (stdin.readLineSync()!).split(",").map((el) => int.parse(el));
  
  print("Enter you #2 List<int>: ");
  Iterable<int> user_list_2 = (stdin.readLineSync()!).split(",").map((el) => int.parse(el));

  print("Result sum list: ${sumListsElements(
    [
      user_list_1.toList(), 
      user_list_2.toList()
    ]
  )}");
}

int sumListsElements(List<List<int>> lists) {
  int sum = 0;
  for (var i = 0; i < lists.length; i++) {
    for (var j = 0; j < lists[i].length; j++) {
      sum += lists[i][j];
    }
  }

  return sum;
}
