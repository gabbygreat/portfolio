import 'dart:io';

import 'package:universal_html/html.dart' as html;

enum PlatformType {
  appleStyle, // Mac, iPhone
  googleStyle; // Android, Windows

  static PlatformType get getPlatformType {
    final userAgent = html.window.navigator.userAgent.toString().toLowerCase();
    if (userAgent.contains("iphone")) return appleStyle;
    if (userAgent.contains("android")) return googleStyle;
    // tablet
    if (userAgent.contains("ipad")) return appleStyle;
    if (Platform.isMacOS) return appleStyle;
    if (Platform.isAndroid) return googleStyle;
    if (Platform.isWindows) return googleStyle;
    if (Platform.isIOS) return appleStyle;

    return googleStyle;
  }
}

enum ScreenSize { small, medium, large }
