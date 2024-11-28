/*
Напишите приложение, которое считывает содержимое нескольких
текстовых файлов и создает новый файл, в котором объединены все строки
из исходных файлов, отсортированные в алфавитном порядке
*/

import 'dart:io';

class FileMerger {
  final List<String> inputFilePaths;
  final String outputFilePath;

  FileMerger({required this.inputFilePaths, required this.outputFilePath});

  Future<void> mergeAndSortFiles() async {
    try {
      List<String> allLines = await _readAllLinesFromFiles();

      allLines.sort(); 

      await _writeLinesToFile(allLines);
      print('Files merged and sorted successfully. Output saved to $outputFilePath');
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  Future<List<String>> _readAllLinesFromFiles() async {
    List<String> allLines = [];
    for (var path in inputFilePaths) {
      var file = File(path);
      if (await file.exists()) {
        var lines = await file.readAsLines();
        allLines.addAll(lines);
      } else {
        print('Warning: File "$path" does not exist and will be skipped.');
      }
    }
    return allLines;
  }

  Future<void> _writeLinesToFile(List<String> lines) async {
    var outputFile = File(outputFilePath);
    await outputFile.writeAsString(lines.join('\n'));
  }
}

void main() async {
  var inputFiles = ['task_3_files/file1.txt', 'task_3_files/file2.txt'];
  var outputFile = 'task_3_files/merged_sorted_output.txt';

  var fileMerger = FileMerger(inputFilePaths: inputFiles, outputFilePath: outputFile);
  await fileMerger.mergeAndSortFiles();
}
