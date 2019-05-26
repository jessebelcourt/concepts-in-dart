import 'dart:async';

void main(List<String> args) {
  loadString('Hello from Dart').then((s) => print(s));
}

Future<String> loadString(String str) {
  return Future.delayed(
    Duration(seconds: 1),
  ).then((_) {
    return 'String $str';
  });
}
