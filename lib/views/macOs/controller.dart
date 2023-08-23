import 'dart:async';
import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class MacOsScreen extends ConsumerStatefulWidget {
  static const path = "/test";
  static const name = "test";
  const MacOsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MacOsScreen> createState() => MacOsController();
}

class MacOsController extends ConsumerState<MacOsScreen> {
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
    return MacOsView(this);
  }
}
