
import 'dart:async';

void main(List<String> args) async {
  exampleStream(20)
    .listen((int x) => print('Number: $x'));


}

Stream<int> exampleStream(int x) async* {
  for (int i = 0; i < x; i++) {
    yield i;
  }
}