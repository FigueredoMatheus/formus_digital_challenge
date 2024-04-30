import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  FlavorsSettings.appFlavor = Flavor.homo;
  await runner.main();
}
