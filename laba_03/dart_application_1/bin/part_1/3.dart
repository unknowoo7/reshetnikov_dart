import 'dart:io';

void main() {
  print("Enter you List<int>: ");
  String user_data = stdin.readLineSync()!;
  List<String> list = user_data.split(", ");
  
  double mul = 1;

  for (var i = 0; i < list.length; i++) mul *= int.parse(list[i]);
  print("Sum \"FOR:\"\t${mul}");

  mul = 1;
  for (var element in list) mul *= int.parse(element);
  print("Sum \"FOR-IN:\"\t${mul}");

  mul = 1;
  int i = 0;
  while (i < list.length) {
    mul *= int.parse(list[i]);
    ++i;
  }
  print("Sum \"WHILE:\"\t${mul}");
}


/**
 *  Пользователь вводит с клавиатуры список целочисленных значений.
 *  Используя цикл for, for-in и while найдите произведение его элементов 
 *  и выведите полученный результат в терминал
 */