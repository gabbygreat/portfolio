import 'package:portfolio/utils/utils.dart';

final timeProvider = StateProvider<DateTime>((ref) => DateTime.now());
final homeScreen = StateProvider.family((ref, BuildContext context) {
  if (PlatformType.getPlatformType == PlatformType.googleStyle) {
    if (context.screenSize == ScreenSize.small) {
      return const AndroidsScreen();
    } else {
      return const WindowsScreen();
    }
  } else {
    if (context.screenSize == ScreenSize.small) {
      return const IphoneScreen();
    } else {
      return const MacOsScreen();
    }
  }
});
