import 'dart:async';
import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/app.dart';
import 'package:formus_digital_challenge/src/core/services/get_it.dart';
import 'package:formus_digital_challenge/src/core/themes/my_app_themes.dart';
import 'package:get/get.dart';

Future initServices() async {
  Get.log('Starting services...');

  setupGetIt();
  Get.put(MyAppThemes());

  Get.log('All services started...');
}

FutureOr<void> main() async {
  initServices();

  runApp(const App());
}
