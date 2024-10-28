import 'dart:async';
import 'dart:io';

/**
 * Пользователь вводит с клавиатуры большое число. Посредством цикла
 * и битовых операций посчитайте количество бит, установленных в единицу
 * и выведите полученный результат в терминал.
 */

void main () {
  int cout_raised_bit = 0;
  List<String> user_number = int.parse(stdin.readLineSync()!).toRadixString(2).split("");

  for (var element in user_number) {
    if (element == "1") {
      ++cout_raised_bit;
    }
  }

  print("RES: ${cout_raised_bit}");
}