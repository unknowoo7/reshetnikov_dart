import 'dart:io';

void main() {
  {
    int sum = 0;
    for (var i = 10; i < 76; i++) {
      if (i % 3 == 0) sum += i;
    }
    print("FOR:\t\t ${sum}");
  }

  {
    int i = 10;
    int sum = 0;
    do {
      if (i % 3 == 0) sum += i;
    } while (++i <= 76);
    print("DO-WHILE:\t ${sum}");
  }

  {
    int i = 9;
    int sum = 0;
    while (++i <= 76) {
      if (i % 3 == 0) sum += i;
    }
    print("WHILE:\t\t ${sum}");
  }
}


/**
 * Используя цикл for, do-while и while посчитайте сумму значений от
 * 10 до 76, которые нацело делятся на 3 и выведите в терминал полученный
 * результат.
 */