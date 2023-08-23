import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class SampleScreen extends StatefulWidget {
  static const path = "/test";
  static const name = "test";
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => SampleController();
}

class SampleController extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return SampleView(this);
  }
}
