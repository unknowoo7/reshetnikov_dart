import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter you String: ");
  int cout_repeat = 0;
  String line = stdin.readLineSync()!;
  Set<String> simpols = new Set();

  for (var element in line.split("")) {
    simpols.add(element);
  }

  print("Repeat \'FOR\' simpols");
  for (var element in simpols) {
    for (var j = 0; j < line.length; j++) {
      if (element == line[j]) ++cout_repeat;
    }
    print("\'${element}\' - ${cout_repeat}");
    cout_repeat = 0;
  }

  print("Repeat \'FOR-IN\' simpols");
  for (var element in simpols) {
    for (var char in line.split("")) {
      if (element == char) ++cout_repeat;
    }
    print("\'${element}\' - ${cout_repeat}");
    cout_repeat = 0;
  }

  print("Repeat \'WHILE\' simpols");
  int i = 0;
  for (var element in simpols) {
    while(i < line.length) {
      if (element == line[i]) ++cout_repeat;
      ++i;
    }
    print("\'${element}\' - ${cout_repeat}");
    cout_repeat = 0;
    i = 0;
  }
}

/**
 * Пользователь вводит с клавиатуры текст. 
 * Используя цикл for, for-in и while посчитайте количество вхождений 
 * каждого символа в строку и выведите в терминал полученный результат.
 */
