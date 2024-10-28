import 'dart:io';

/**
 * Пользователь вводит с клавиатуры число. 
 * Используя побитовую операцию умножьте значение на 16 и 
 * выведите полученный результат в двоичном формате в терминал.
 */
void main() {
  int num = int.parse(stdin.readLineSync()!);
  print("RESULT: ${(num << 4).toRadixString(2)}");
}
