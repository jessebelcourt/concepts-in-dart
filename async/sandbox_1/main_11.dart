import 'dart:async';

void main() async {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, transform)
    .take(5);

    List<int> data = await stream.toList();

    for(int i in data) {
      print(i);
    }
}

int transform(int x) {
  return (x + 1) * 2;
}

bool condition(int x) {
  return x < 5;
}