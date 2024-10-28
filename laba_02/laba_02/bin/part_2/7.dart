/* 
* Задача:
* Извлеките список description, имя и возраст.
* Выведите в терминал полученный результат
*/

import 'dart:convert';
import 'dart:io';

void main() {
  try {
    var object = {
      "name": "Alex",
      "age": 35,
      "course": 2,
      "single": true,
      "description": [
          "Мечтатель",
          "Ленив",
          "Студент",
          "Постоянно жалуется на жизнь"
        ]
    };

    String name = object["name"] as String;
    int age = object["age"] as int;
    List<String> list_description = object["description"] as List<String>;

    print("Name:\t${name} \nAge:\t${age} \nDescription:\t${list_description}");

  } catch(e) {
    print(e);
  }

}

