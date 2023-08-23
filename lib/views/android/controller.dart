import 'dart:async';

import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class AndroidsScreen extends ConsumerStatefulWidget {
  static const path = "/test";
  static const name = "test";
  const AndroidsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AndroidsScreen> createState() => AndroidsController();
}

class AndroidsController extends ConsumerState<AndroidsScreen> {
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
    return AndroidsView(this);
  }
}
