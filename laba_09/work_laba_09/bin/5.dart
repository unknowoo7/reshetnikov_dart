import 'dart:io';

class UniqueWordsExtractor {
  final String inputFilePath;
  final String outputFilePath;

  UniqueWordsExtractor({
    required this.inputFilePath,
    required this.outputFilePath,
  });

  Future<void> extractAndSaveUniqueWords() async {
    try {
      var content = await _readFileContent();
      var uniqueWords = _extractUniqueWords(content);
      _displayUniqueWords(uniqueWords);
      await _writeUniqueWordsToFile(uniqueWords);
      print('Unique words have been saved to $outputFilePath');
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  Future<String> _readFileContent() async {
    var file = File(inputFilePath);
    if (!await file.exists()) {
      throw FileSystemException("Input file does not exist", inputFilePath);
    }
    return await file.readAsString();
  }

  Set<String> _extractUniqueWords(String content) {
    var words = content
        .toLowerCase()
        .split(RegExp(r'\W+'))
        .where((word) => word.isNotEmpty); 
    return words.toSet(); 
  }

  void _displayUniqueWords(Set<String> uniqueWords) {
    print('Unique words:');
    for (var word in uniqueWords) {
      print(word);
    }
  }

  Future<void> _writeUniqueWordsToFile(Set<String> uniqueWords) async {
    var outputFile = File(outputFilePath);
    await outputFile.writeAsString(uniqueWords.join('\n'));
  }
}

void main() async {
  var inputFilePath = 'task_5_files/input.txt'; 
  var outputFilePath = 'task_5_files/unique_words_output.txt'; 

  var extractor = UniqueWordsExtractor(
    inputFilePath: inputFilePath,
    outputFilePath: outputFilePath,
  );

  await extractor.extractAndSaveUniqueWords();
}
