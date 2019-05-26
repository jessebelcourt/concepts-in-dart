import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  File file = File('text.txt');

  IOSink sink = file.openWrite(mode: FileMode.append);
  // IOSink sink = file.openWrite();
  sink.add(
    utf8.encode('Hello from Dart at ${DateTime.now().toIso8601String()}\n')
  );

  await sink.flush();
  await sink.close();

  // Stream<List<int>> fileStream = file.openRead();
  Stream<List<int>> fileStream = file.openRead().asBroadcastStream();

  fileStream
    .transform(utf8.decoder)
    .transform(LineSplitter())
    .listen(
      (str) => print(str),
      onDone: () => print('Done reading File'),
      onError: (e) => print(e.toString()));

  fileStream.listen((byte) => print(byte));

}