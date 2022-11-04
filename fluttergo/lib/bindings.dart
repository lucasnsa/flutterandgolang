import 'dart:ffi';
import 'dart:io';

import 'package:fluttergo/generated_bindings.dart';

final FibonacciGO bindings = FibonacciGO(dylib);

DynamicLibrary _openDynamicLibrary() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('lib.so');
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('/mnt/dev/blog/fluttergo/lib.so');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('lib.dll');
  }
  return DynamicLibrary.process();
}

DynamicLibrary dylib = _openDynamicLibrary();
