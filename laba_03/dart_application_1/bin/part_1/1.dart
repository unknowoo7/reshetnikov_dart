import 'dart:io';

void main(List<String> arguments) {
  String user_data = stdin.readLineSync()!;
  List<String> list = user_data.split(", ");

  double sum = 0;

  for (var i = 0; i < list.length; i++) sum += double.parse(list[i]);
  print("Sum \"FOR:\"\t${sum}");

  sum = 0;
  for (var element in list) sum += double.parse(element);
  print("Sum \"FOR-IN:\"\t${sum}");

  sum = 0;
  int i = 0;
  while (i < list.length) {
    sum += double.parse(list[i]);
    ++i;
  }
  print("Sum \"WHILE:\"\t${sum}");
}

/**
 * Пользователь вводит с клавиатуры список вещественных значений. 
 * Используя цикл for, for-in и while найдите сумму его элементов 
 * и выведите полученный результат в терминал.
 */