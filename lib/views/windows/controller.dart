import 'dart:async';

import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class WindowsScreen extends ConsumerStatefulWidget {
  static const path = "/test";
  static const name = "test";
  const WindowsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WindowsScreen> createState() => WindowsController();
}

class WindowsController extends ConsumerState<WindowsScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      ref.read(timeProvider.notifier).state = DateTime.now();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WindowsView(this);
  }
}
