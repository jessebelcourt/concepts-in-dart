
import 'dart:async';

void main(List<String> args) async {
  Stream stream = exampleStream(20);
  await for (var s in stream) {
    print('Number: $s');
  }


}

Stream<int> exampleStream(int x) async* {
  for (int i = 0; i < x; i++) {
    yield i;
  }
}