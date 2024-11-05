/**
 * Задание №5.
 * Пользователь вводит с клавиатуры число n. Напишите рекурсивную
 * функцию для вычисления факториала f(n). Полученный результат выведите
 * в терминал
 */


import "dart:io";

void main() {
  print("\t\t\t\tЗадание №5. FACTORIAL");
  print("Enter you number: ");
  String userNumbers = stdin.readLineSync()!;

  print("Factorial($userNumbers): ${factorial(int.parse(userNumbers))}");
}

int factorial(int n) {
  return n == 1 ? n : n * factorial(n - 1);
}

