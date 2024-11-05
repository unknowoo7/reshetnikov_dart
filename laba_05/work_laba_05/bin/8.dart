/**
 * Задание 8
 * Пользователь вводит с клавиатуры строку str и символ symbol.
 * Напишите рекурсивную функцию, удаляющую из строки все буквы,
 * соответствующие symbol. Полученный результат выведите в терминал.
 */


import "dart:io";

void main() {
  print("\t\t\t\tЗадание №8. Удаление символа из строки");
  print("Enter you string: ");
  String userString = stdin.readLineSync()!;
  print("Enter you symbol: ");
  String symbol = stdin.readLineSync()!;

  print("RESULT");
  print(removeAllChar(userString, symbol));
}

String removeAllChar(String line, String s) {
  int i = line.indexOf(s);

  if (i == -1) {
    return line;
  }
  
  return removeAllChar(line.substring(0, i) + line.substring(i + 1), s);
}

