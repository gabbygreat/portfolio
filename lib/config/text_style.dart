import 'package:portfolio/utils/utils.dart';

extension TextStyleExtensions on Text {
  /// iOS and Mac
  Text get apple => Text(
        data!,
        style: style?.copyWith(),
      );

  /// Android and Windows
  Text get google => Text(
        data!,
        style: style?.copyWith(),
      );
}
