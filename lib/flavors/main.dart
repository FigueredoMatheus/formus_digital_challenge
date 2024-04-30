import 'dart:async';
import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/app.dart';
import 'package:formus_digital_challenge/src/core/services/get_it.dart';

FutureOr<void> main() async {
  setupGetIt();

  runApp(const App());
}
