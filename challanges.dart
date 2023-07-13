// import 'package:characters/characters.dart';

// https://www.codewars.com/kata/56541980fa08ab47a0000040
String printerError(String s) => '${s.characters.where((item) => item.compareTo('a') < 0 || item.compareTo('m') > 0).length}/${s.length}';

// https://www.codewars.com/kata/55908aad6620c066bc00002a
bool occuranceCheck(String s) => s.toLowerCase().split('').where((item) => item == 'o').length == s.toLowerCase().split('').where((item) => item == 'x').length;

// https://www.codewars.com/kata/5ba38ba180824a86850000f7
List<int> removeDuplicates(List<int> numbers) => numbers.reversed.toSet().toList().reversed.toList();

// https://www.codewars.com/kata/5b180e9fedaa564a7000009a
String upperLowerCase(String word) => word.split('').where((item) => 'a'.compareTo(item) <= 0 && 'z'.compareTo(item) >= 0).length >= word.split('').where((item) => 'A'.compareTo(item) <= 0 && 'Z'.compareTo(item) >= 0).length ? word.toLowerCase() : word.toUpperCase();


// https://www.codewars.com/kata/5f77d62851f6bc0033616bd8
bool validSpacing(String word) => word.trim() == word && !word.split(' ').any((w) => w.isEmpty);


// https://www.codewars.com/kata/5abd66a5ccfd1130b30000a9
List<int> rowWeights(List<int> numbers) => [numbers.asMap().entries.where((entry) => entry.key.isEven).map((e) => e.value).reduce((a, b) => a + b), numbers.asMap().entries.where((entry) => entry.key.isOdd).map((e) => e.value).reduce((a, b) => a + b)];


// https://www.codewars.com/kata/59df2f8f08c6cec835000012
String meeting(String names) => (names.toUpperCase().split(';').map((e) => e.split(':').reversed.join(', ')).toList()..sort()).map((e) => '($e)').join('');


// https://www.codewars.com/kata/5d23d89906f92a00267bb83d
String cleanOrder(String order) => ({'burger': 'Burger', 'fries': 'Fries', 'chicken': 'Chicken', 'pizza': 'Pizza', 'sandwich': 'Sandwich', 'onionrings': 'Onion Rings', 'milkshake': 'Milkshake', 'coke': 'Coke',}).entries.where((entry) => order.contains(entry.key)).toList().asMap().entries.map((entry) => '${entry.key + 1}. ${entry.value.value}').join('\n');
