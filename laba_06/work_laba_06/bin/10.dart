/**
 * Напишите функцию, на вход которой подается список целочисленных 
 * значений. Используя механизм замыкания верните функцию, 
 * принимающую на вход значение n и возвращающую список, в котором 
 * удалены все элементы, что без остатка делятся на n. Полученный результат 
 * выведите в терминал.
 */

import "dart:io";

void main() {
  List<int> numbers = [11, 13, 20, 3, 30, 17, 40];
  var filter = createFilter(numbers)(5);
  
  print(filter); 
}

List<int> Function(int) createFilter(List<int> numbers) {
  return (int n) {
    return numbers.where((number) => number % n == 0).toList();
  };
}