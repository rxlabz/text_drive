// @dart=2.9

import 'package:integration_test/integration_test_driver.dart';

Future<void> main() => integrationDriver();
/*
Future<void> main() async {
  final driver = await FlutterDriver.connect();

  await integrationDriver(
    driver: driver,
    onScreenshot: (String screenshotName, List<int> screenshotBytes) async {
      final shot = File('integration_test/goldens/${screenshotName}.png');
      await shot.writeAsBytes(screenshotBytes);
      return true;
    },
  );
}
*/
