part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    var child = controller.ref.watch(homeScreen(context));
    if (PlatformType.getPlatformType == PlatformType.googleStyle) {
      if (context.screenSize == ScreenSize.small) {
        child = const AndroidsScreen();
      } else {
        child = const WindowsScreen();
      }
    } else {
      if (context.screenSize == ScreenSize.small) {
        child = const IphoneScreen();
      } else {
        child = const MacOsScreen();
      }
    }
    return child;
  }
}
