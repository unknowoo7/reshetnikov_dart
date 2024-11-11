/**
 * Напишите функцию, использующую механизм замыканий для 
 * сложения двух чисел и возвращающую полученное значение. Например, 
 * my_sum(1)(2) -> 3. Полученный результат выведите в терминал.
 */

import "dart:io";

int Function(int) my_sum(int a) {
  return (int b) => a + b;
}

void main() {
  var result = my_sum(1)(2);
  
  print(result);
}

