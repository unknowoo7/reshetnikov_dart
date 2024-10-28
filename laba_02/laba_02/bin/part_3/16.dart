import 'dart:io';

void main() {
  print("Programm #1");
  programm_1();

  print("Programm #2");
  programm_2();
}

void programm_1() {
  print('Введите номер месяца (1-12):');
  int month = int.parse(stdin.readLineSync()!);

  int days;

  if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
    days = 31;
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    days = 30;
  } else if (month == 2) {
    days = 28;
  } else {
    print('Некорректный номер месяца. Пожалуйста, введите число от 1 до 12.');
    return;
  }

  print('В месяце $month количество дней: $days');
}

void programm_2() {
  print('Введите номер месяца (1-12):');
  int month = int.parse(stdin.readLineSync()!);

  int days;

  switch (month) {
    case 1: // Январь
    case 3: // Март
    case 5: // Май
    case 7: // Июль
    case 8: // Август
    case 10: // Октябрь
    case 12: // Декабрь
      days = 31;
      break;
    case 4: // Апрель
    case 6: // Июнь
    case 9: // Сентябрь
    case 11: // Ноябрь
      days = 30;
      break;
    case 2: // Февраль
      // Для упрощения, считаем, что год не високосный.
      days = 28;
      break;
    default:
      print('Некорректный номер месяца. Пожалуйста, введите число от 1 до 12.');
      return;
  }

  print('В месяце $month количество дней: $days');
}