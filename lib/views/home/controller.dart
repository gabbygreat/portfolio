import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => HomeController();
}

class HomeController extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
