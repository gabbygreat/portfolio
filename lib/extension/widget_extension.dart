import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:portfolio/utils/utils.dart';

extension WidgetExtensionss on num {
  Widget get sbH => SizedBox(
        height: toDouble(),
      );

  Widget get sbW => SizedBox(
        width: toDouble(),
      );
}

extension DeviceScreenInfo on BuildContext {
  bool get isMobile {
    if (Platform.isIOS || Platform.isAndroid) {
      return true;
    }
    return false;
  }

  bool get isWeb {
    return kIsWeb;
  }

  ScreenSize get screenSize {
    if (isMobile) {
      if (MediaQuery.sizeOf(this).width < 600) {
        return ScreenSize.small;
      } else if (MediaQuery.sizeOf(this).width < 1024) {
        return ScreenSize.medium;
      } else {
        return ScreenSize.large;
      }
    } else {
      if (MediaQuery.sizeOf(this).width < 800) {
        return ScreenSize.small;
      } else if (MediaQuery.sizeOf(this).width < 1200) {
        return ScreenSize.medium;
      } else {
        return ScreenSize.large;
      }
    }
  }
}
