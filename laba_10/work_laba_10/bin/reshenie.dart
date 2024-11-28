import 'dart:convert';
import 'dart:io';

// class DataModel {
//   String id;
//   String name;
//   int value;

//   DataModel({
//     required this.id,
//     required this.name,
//     required this.value,
//   });

//   factory DataModel.fromJson(Map<String, dynamic> json) {
//     return DataModel(
//       id: json['id'] as String,
//       name: json['name'] as String,
//       value: json['value'] as int,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'value': value,
//     };
//   }

//   @override
//   String toString() {
//     return 'DataModel(id: $id, name: $name, value: $value)';
//   }
// }

// class JsonProcessor {
//   final String inputFilePath;
//   final String outputFilePath;

//   JsonProcessor({
//     required this.inputFilePath,
//     required this.outputFilePath,
//   });

//   Future<void> processJsonData() async {
//     try {
//       var dataList = await _loadJson();
//       _modifyData(dataList);
//       _displayData(dataList);
//       await _saveJson(dataList);
//       print('Modified data has been saved to $outputFilePath');
//     } catch (e) {
//       print('An error occurred: $e');
//     }
//   }

//   Future<List<DataModel>> _loadJson() async {
//     var file = File(inputFilePath);
//     if (!await file.exists()) {
//       throw FileSystemException("Input file does not exist", inputFilePath);
//     }

//     var content = await file.readAsString();

//     final jsonData = json.decode(content) as Map<String, Object?>;
//     return jsonData.map((item) => DataModel.fromJson(item)).toList();
//   }

//   void _modifyData(List<DataModel> dataList) {
//     for (var item in dataList) {
//       item.value += 10;
//       item.name = 'Modified_${item.name}';
//     }
//   }

//   void _displayData(List<DataModel> dataList) {
//     print('Modified data:');
//     for (var item in dataList) {
//       print(item);
//     }
//   }

//   Future<void> _saveJson(List<DataModel> dataList) async {
//     var outputFile = File(outputFilePath);
//     var jsonData = dataList.map((item) => item.toJson()).toList();
//     await outputFile.writeAsString(json.encode(jsonData));
//   }
// }

void main() async {
  var inputFilePath = 'input.json'; 
  var outputFilePath = 'output.json';

  var file = File(inputFilePath);
  if (!await file.exists()) {
    throw FileSystemException("Input file does not exist", inputFilePath);
  }

  var content = await file.readAsString();

  final jsonData = jsonDecode(content);

  var res = {...jsonData, "name": "AndreyKazakov"};
  var res_2 = res.fromIterable(res, 
    key: (item) => item.toString(),
    value: (item) => traverseJson(item)
  );
}

void traverseJson(dynamic jsonNode, {int depth = 0}) {
  // Отступы для текущего уровня

  if (jsonNode is Map) {
    // Если узел - объект (Map), обрабатываем его ключи и значения
    jsonNode.forEach((key, value) {
      print('$key:');
      traverseJson(value, depth: depth + 1);
    });
  } else if (jsonNode is List) {
    // Если узел - массив (List), обрабатываем каждый элемент
    for (var i = 0; i < jsonNode.length; i++) {
      print('-');
      traverseJson(jsonNode[i], depth: depth + 1);
    }
  } else {
    // Если узел - примитивное значение (String, int, и т.д.), выводим его
    if (assert(jsonNode is String)) {
      jsonNode = '$jsonNode изменён"';
    }

    if (assert(jsonNode is int)) {
      jsonNode = jsonNode + 10;
    }
    print('$jsonNode');
  }
}