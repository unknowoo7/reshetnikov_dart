/**
 * Пользователь вводит с клавиатуры два числа N и k. Напишите
 * функцию, которая будет возвращать результат следующего выражения: 
 * 1^k + 2^k + 3^k + … + N^k 
 * и выведите его в терминал.
 */

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("N: ");
  int N = int.parse(stdin.readLineSync()!) ?? 0;

  print("k: ");
  int k = int.parse(stdin.readLineSync()!) ?? 0;

  print("Result: ${resPow(N, k)}");
}

num resPow(int N, int k) {
  num res = 0;
  for (var i = 1; i <= N; i++) {
    res += pow(i, k);
  }
  return res;
}
