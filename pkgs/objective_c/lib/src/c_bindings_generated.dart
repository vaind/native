// Copyright (c) 2024, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Bindings for `src/objective_c.h` and `src/objective_c_runtime.h`.
// Regenerate bindings with `dart run tool/generate_code.dart`.

// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names
// coverage:ignore-file

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
@ffi.DefaultAsset('objective_c.framework/objective_c')
library;

import 'dart:ffi' as ffi;

/// \mainpage Dynamically Linked Dart API
///
/// This exposes a subset of symbols from dart_api.h and dart_native_api.h
/// available in every Dart embedder through dynamic linking.
///
/// All symbols are postfixed with _DL to indicate that they are dynamically
/// linked and to prevent conflicts with the original symbol.
///
/// Link `dart_api_dl.c` file into your library and invoke
/// `Dart_InitializeApiDL` with `NativeApi.initializeApiDLData`.
///
/// Returns 0 on success.
@ffi.Native<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>(isLeaf: true)
external int Dart_InitializeApiDL(
  ffi.Pointer<ffi.Void> data,
);

@ffi.Native<ffi.Pointer<ObjCSelector> Function(ffi.Pointer<ffi.Char>)>(
    symbol: "sel_registerName", isLeaf: true)
external ffi.Pointer<ObjCSelector> registerName(
  ffi.Pointer<ffi.Char> name,
);

@ffi.Native<ffi.Pointer<ObjCObject> Function(ffi.Pointer<ffi.Char>)>(
    symbol: "objc_getClass", isLeaf: true)
external ffi.Pointer<ObjCObject> getClass(
  ffi.Pointer<ffi.Char> name,
);

@ffi.Native<ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>)>(
    symbol: "objc_retain", isLeaf: true)
external ffi.Pointer<ObjCObject> objectRetain(
  ffi.Pointer<ObjCObject> object,
);

@ffi.Native<ffi.Void Function(ffi.Pointer<ObjCObject>)>(
    symbol: "objc_release", isLeaf: true)
external void objectRelease(
  ffi.Pointer<ObjCObject> object,
);

@ffi.Native<ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>)>(
    symbol: "object_getClass", isLeaf: true)
external ffi.Pointer<ObjCObject> getObjectClass(
  ffi.Pointer<ObjCObject> object,
);

@ffi.Native<
        ffi.Pointer<ffi.Pointer<ObjCObject>> Function(
            ffi.Pointer<ffi.UnsignedInt>)>(
    symbol: "objc_copyClassList", isLeaf: true)
external ffi.Pointer<ffi.Pointer<ObjCObject>> copyClassList(
  ffi.Pointer<ffi.UnsignedInt> count,
);

@ffi.Native<ffi.Void Function()>(symbol: "objc_msgSend")
external void msgSend();

@ffi.Native<ffi.Void Function()>(symbol: "objc_msgSend_fpret")
external void msgSendFpret();

@ffi.Native<ffi.Void Function()>(symbol: "objc_msgSend_stret")
external void msgSendStret();

@ffi.Array.multi([32])
@ffi.Native<ffi.Array<ffi.Pointer<ffi.Void>>>(symbol: "_NSConcreteStackBlock")
external ffi.Array<ffi.Pointer<ffi.Void>> NSConcreteStackBlock;

@ffi.Array.multi([32])
@ffi.Native<ffi.Array<ffi.Pointer<ffi.Void>>>(symbol: "_NSConcreteMallocBlock")
external ffi.Array<ffi.Pointer<ffi.Void>> NSConcreteMallocBlock;

@ffi.Array.multi([32])
@ffi.Native<ffi.Array<ffi.Pointer<ffi.Void>>>(symbol: "_NSConcreteAutoBlock")
external ffi.Array<ffi.Pointer<ffi.Void>> NSConcreteAutoBlock;

@ffi.Array.multi([32])
@ffi.Native<ffi.Array<ffi.Pointer<ffi.Void>>>(
    symbol: "_NSConcreteFinalizingBlock")
external ffi.Array<ffi.Pointer<ffi.Void>> NSConcreteFinalizingBlock;

@ffi.Array.multi([32])
@ffi.Native<ffi.Array<ffi.Pointer<ffi.Void>>>(symbol: "_NSConcreteGlobalBlock")
external ffi.Array<ffi.Pointer<ffi.Void>> NSConcreteGlobalBlock;

@ffi.Native<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
    symbol: "_Block_copy", isLeaf: true)
external ffi.Pointer<ffi.Void> blockCopy(
  ffi.Pointer<ffi.Void> object,
);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
    symbol: "_Block_release", isLeaf: true)
external void blockRelease(
  ffi.Pointer<ffi.Void> object,
);

@ffi.Native<ffi.Void Function(ffi.Pointer<ObjCBlock>)>(isLeaf: true)
external void disposeObjCBlockWithClosure(
  ffi.Pointer<ObjCBlock> block,
);

@ffi.Native<ffi.Bool Function(ffi.Pointer<ObjCBlock>)>(isLeaf: true)
external bool isValidBlock(
  ffi.Pointer<ObjCBlock> block,
);

typedef ObjCSelector = _ObjCSelector;

final class _ObjCSelector extends ffi.Opaque {}

typedef ObjCObject = _ObjCObject;

final class _ObjCObject extends ffi.Opaque {}

typedef ObjCBlock = _ObjCBlock;

final class _ObjCBlock extends ffi.Struct {
  external ffi.Pointer<ffi.Void> isa;

  @ffi.Int()
  external int flags;

  @ffi.Int()
  external int reserved;

  external ffi.Pointer<ffi.Void> invoke;

  external ffi.Pointer<ObjCBlockDesc> descriptor;

  external ffi.Pointer<ffi.Void> target;

  @ffi.Int64()
  external int dispose_port;
}

typedef ObjCBlockDesc = _ObjCBlockDesc;

final class _ObjCBlockDesc extends ffi.Struct {
  @ffi.UnsignedLong()
  external int reserved;

  @ffi.UnsignedLong()
  external int size;

  external ffi.Pointer<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<ffi.Void> dst, ffi.Pointer<ffi.Void> src)>>
      copy_helper;

  external ffi
      .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void> src)>>
      dispose_helper;

  external ffi.Pointer<ffi.Char> signature;
}
