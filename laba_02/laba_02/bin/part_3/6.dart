import 'dart:io';

void main() {
  print("Enter year: ");
  var year = int.parse(stdin.readLineSync()!);

  print("Programm #1");
  programm_1(year);

  print("Programm #2");
  programm_2(year);
}

void programm_1(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("YES");
  } else {
    print("NO");
  }
}

void programm_2(int year) {
   bool isLeapYear = DateTime(year, 2, 29).day == 29;
   print(isLeapYear ? 'YES' : 'NO');
}

/**
 * Пользователь вводит с клавиатуры произвольный год. Напишите
 * программу, выводящую в терминал «YES» или «NO» (без кавычек) в
 * зависимости от того високосный год или нет. Реализуйте 2 версии
 * программы с разными подходами.
*/
