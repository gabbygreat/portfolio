import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.android).existsSync(), true);
    expect(File(AppImages.iPhone).existsSync(), true);
    expect(File(AppImages.macbook).existsSync(), true);
    expect(File(AppImages.me).existsSync(), true);
    expect(File(AppImages.windows).existsSync(), true);
  });
}
