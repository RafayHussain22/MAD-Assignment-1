void main() {
  List<String> lines = [
    'This is a really really really cool experiment really',
    'Cute little experiment',
    'Will it work maybe it will work do you think it will it will'
  ];

  for (var line in lines) {
    print('Line: "$line"');
    printMostFrequentWords(line);
  }
}

void printMostFrequentWords(String line) {
  List<String> words = line.split(RegExp(r'\s+')).map((w) => w).toList();
  Map<String, int> wordCount = {};

  for (var word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  int maxFrequency = wordCount.values.reduce((a, b) => a > b ? a : b);

  var mostFrequentWords =
      wordCount.keys.where((word) => wordCount[word] == maxFrequency).toList();

  print(
      'Most frequent word(s): ${mostFrequentWords.join(', ')} with frequency $maxFrequency');
  print('---');
}
