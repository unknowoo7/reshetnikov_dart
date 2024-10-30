/**
 * Пользователь вводит с клавиатуры число целое число,
 * представляющее собой номер месяца. Напишите функция, которая
 * возвращает количество дней в месяце. Если введен не корректный номер
 * месяца, то возвращается ноль. Полученный результат выведите в терминал.
*/

import 'dart:io';


void main() {
  List<String> months = ['jan','feb','mar','april','may','jun','july','aug','sep','oct','nov','dec'];
  print("Enter № mount:");
  int month = int.parse(stdin.readLineSync()!);
  int countDay = getCountDayInMount(month);

  print("Count day in ${countDay != 0 ? months[month - 1] : 'NULL'}: ${countDay}");
}

int getCountDayInMount(int month) {
  if (month <= 0 || month > 12) {
    return 0;
  }

  if ([4, 6, 9, 11].firstWhere((e) => e == month, orElse: () => -1) > 0) {
    return 30;
  }

  if ([1, 3, 5, 7, 8, 10, 12].firstWhere((e) => e == month, orElse: () => -1) > 0) {
    return 31;
  }

  return 29;
}
