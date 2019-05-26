import 'dart:async';


// same functionality as main.dart, just uses async/await instead.
main(List<String> args) async {
  String str = await loadString('Hello From Dart Async');

  print(str);
}

Future<String> loadString(String str) async {
  await Future.delayed(Duration(seconds: 1));
  return 'String $str';
}