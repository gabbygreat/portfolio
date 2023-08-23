import 'package:portfolio/utils/utils.dart';
part 'view.dart';

class IphoneScreen extends StatefulWidget {
  static const path = "/test";
  static const name = "test";
  const IphoneScreen({Key? key}) : super(key: key);

  @override
  State<IphoneScreen> createState() => IphoneController();
}

class IphoneController extends State<IphoneScreen> {
  @override
  Widget build(BuildContext context) {
    return IphoneView(this);
  }
}
