import 'dart:io';

class LetterCounter {
  final String inputFilePath;
  final String outputFilePath;
  
  final Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'y'};
  final Set<String> consonants = {
    'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
    'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z'
  };

  LetterCounter({
    required this.inputFilePath,
    required this.outputFilePath,
  });

  Future<void> countAndSaveLetters() async {
    try {
      var content = await _readFileContent();
      var (vowelCount, consonantCount) = _countVowelsAndConsonants(content);
      _displayCounts(vowelCount, consonantCount);
      await _writeCountsToFile(vowelCount, consonantCount);
      print('Letter counts have been saved to $outputFilePath');
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

  (int, int) _countVowelsAndConsonants(String content) {
    int vowelCount = 0;
    int consonantCount = 0;

    for (var char in content.toLowerCase().split('')) {
      if (vowels.contains(char)) {
        vowelCount++;
      } else if (consonants.contains(char)) {
        consonantCount++;
      }
    }
    return (vowelCount, consonantCount);
  }

  void _displayCounts(int vowelCount, int consonantCount) {
    print('Number of vowels: $vowelCount');
    print('Number of consonants: $consonantCount');
  }

  Future<void> _writeCountsToFile(int vowelCount, int consonantCount) async {
    var outputFile = File(outputFilePath);
    var content = 'Number of vowels: $vowelCount\nNumber of consonants: $consonantCount';
    await outputFile.writeAsString(content);
  }
}

void main() async {
  var inputFilePath = 'task_8_files/input.txt'; 
  var outputFilePath = 'task_8_files/letter_counts_output.txt'; 

  var letterCounter = LetterCounter(
    inputFilePath: inputFilePath,
    outputFilePath: outputFilePath,
  );

  await letterCounter.countAndSaveLetters();
}
