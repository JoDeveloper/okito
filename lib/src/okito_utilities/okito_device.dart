import 'package:flutter/material.dart';
import '../okito_extensions/context_extensions.dart';

mixin OkitoDevice {
  BuildContext? get context;

  /// The horizontal extent of this size.
  double get width => context!.width;

  /// The vertical extent of this size.
  double get height => context!.height;

  /// The aspect ratio of this size.
  ///
  ///This returns the [width] divided by the [height].
  double get aspectRatio => context!.aspectRatio;

  /// Whether device is wider than tall or not.
  bool get isLandscape => context!.isLandscape;

  /// Whether device is taller than wide or not.
  bool get isPortrait => context!.isPortrait;

  /// App theme.
  ThemeData get theme => Theme.of(context!);

  /// App theme mode (if dark returns true, else false).
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// The number of device pixels for each logical pixel. This number might not
  ///  be a power of two. Indeed, it might not even be an integer. For example,
  ///  the Nexus 6 has a device pixel ratio of 3.5.
  double get devicePixelRatio => context!.devicePixelRatio;

  /// Returns true if the device is *android*.
  bool get isAndroid => Theme.of(context!).platform == TargetPlatform.android;

  /// Returns true if the device is *iOS*.
  bool get isIos => Theme.of(context!).platform == TargetPlatform.iOS;
}
