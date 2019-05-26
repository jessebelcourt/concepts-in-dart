import 'dart:async';
 
void main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval, transform)
    .take(10)
    .skip(2);

  // Can just chane these stream modifiers like above
  
  // stream = stream.take(10);
  // stream = stream.skip(2);

  await for(int i in stream) {
    print(i);
  }
}

int transform(int x) {
  return (x + 1) * 2;
}