import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/resources/resources.dart';

void main() {
  test('app_svg assets test', () {
    expect(File(AppSvg.cloud).existsSync(), true);
    expect(File(AppSvg.edge).existsSync(), true);
    expect(File(AppSvg.facebook).existsSync(), true);
    expect(File(AppSvg.flutter).existsSync(), true);
    expect(File(AppSvg.gmail).existsSync(), true);
    expect(File(AppSvg.linkedIn).existsSync(), true);
    expect(File(AppSvg.resume).existsSync(), true);
    expect(File(AppSvg.safari).existsSync(), true);
    expect(File(AppSvg.whatsapp).existsSync(), true);
  });
}
