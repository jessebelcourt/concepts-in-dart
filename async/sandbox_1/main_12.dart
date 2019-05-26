import 'dart:async';

void main() async {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, transform)
    .take(10);

  stream.listen((x) {
    print(x);
  });
}

int transform(int x) {
  return (x + 1) * 2;
}

bool condition(int x) {
  return x < 5;
}