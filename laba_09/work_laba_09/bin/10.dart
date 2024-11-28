import 'dart:io';

class AverageCalculator {
  final String inputFilePath;
  final String outputFilePath;

  AverageCalculator({
    required this.inputFilePath,
    required this.outputFilePath,
  });

  Future<void> calculateAndSaveAverage() async {
    try {
      var numbers = await _readNumbersFromFile();
      if (numbers.isEmpty) {
        throw Exception("No integers found in the input file.");
      }
      var average = _calculateAverage(numbers);
      _displayAverage(average);
      await _writeAverageToFile(average);
      print('Average has been saved to $outputFilePath');
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  Future<List<int>> _readNumbersFromFile() async {
    var file = File(inputFilePath);
    if (!await file.exists()) {
      throw FileSystemException("Input file does not exist", inputFilePath);
    }

    var lines = await file.readAsLines();
    List<int> numbers = [];
    
    for (var line in lines) {
      var lineNumbers = line
          .split(' ')
          .where((part) => part.isNotEmpty)
          .map(int.tryParse)
          .whereType<int>(); // Фильтрация только валидных целочисленных значений
      numbers.addAll(lineNumbers);
    }
    
    return numbers;
  }

  double _calculateAverage(List<int> numbers) {
    var sum = numbers.reduce((a, b) => a + b);
    return sum / numbers.length;
  }

  void _displayAverage(double average) {
    print('Average of numbers: $average');
  }

  Future<void> _writeAverageToFile(double average) async {
    var outputFile = File(outputFilePath);
    await outputFile.writeAsString('Average of numbers: $average');
  }
}

void main() async {
  var inputFilePath = 'task_10_files/numbers.txt'; 
  var outputFilePath = 'task_10_files/average_output.txt'; 

  var averageCalculator = AverageCalculator(
    inputFilePath: inputFilePath,
    outputFilePath: outputFilePath,
  );

  await averageCalculator.calculateAndSaveAverage();
}
