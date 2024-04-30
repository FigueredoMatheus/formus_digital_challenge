import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  FlavorsSettings.appFlavor = Flavor.prod;
  await runner.main();
}
