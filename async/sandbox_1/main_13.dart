import 'dart:async';

void main() async {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, transform);
    // .take(10);


  // spefifies the number of emitted events
  // stream must be closed in order to get number of emmitted events.
  // print(await stream.length);

  stream.forEach((int x) {
    print(x);
  });
}

int transform(int x) {
  return (x + 1) * 2;
}

bool condition(int x) {
  return x < 5;
}