import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart' as ffi;
import 'package:path/path.dart' as p;

import 'duktape_bindings_generated.dart';

const String _libName = 'flutter_ffigen';

final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open('build/macos/Build/Products/Debug'
          '/$_libName/$_libName.framework/$_libName');
    }
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open(
          'build/linux/x64/debug/bundle/lib/lib$_libName.so');
    }
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open(p.canonicalize(
          p.join(r'build\windows\runner\Debug', '$_libName.dll')));
    }
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

final FlutterFfigenBindings _bindings = FlutterFfigenBindings(_dylib);

class Duktape {
  Duktape() {
    ctx =
        _bindings.duk_create_heap(nullptr, nullptr, nullptr, nullptr, nullptr);
  }

  String evalString(String jsCode) {
    var nativeUtf8 = jsCode.toNativeUtf8();
    final evalResult = _bindings.duk_eval_raw(
        ctx,
        nativeUtf8.cast<Char>(),
        0,
        0 |
            DUK_COMPILE_EVAL |
            DUK_COMPILE_SAFE |
            DUK_COMPILE_NOSOURCE |
            DUK_COMPILE_STRLEN |
            DUK_COMPILE_NOFILENAME);
    ffi.malloc.free(nativeUtf8);

    if (evalResult != 0) {
      throw _retrieveTopOfStackAsString();
    }

    return _retrieveTopOfStackAsString();
  }

  String _retrieveTopOfStackAsString() {
    Pointer<Size> outLengthPtr = ffi.calloc<Size>();
    final errorStrPtr = _bindings.duk_safe_to_lstring(ctx, -1, outLengthPtr);
    final returnVal =
        errorStrPtr.cast<ffi.Utf8>().toDartString(length: outLengthPtr.value);
    ffi.calloc.free(outLengthPtr);
    return returnVal;
  }

  void dispose() {
    _bindings.duk_destroy_heap(ctx);
    ctx = nullptr;
  }

  late Pointer<duk_hthread> ctx;
}
