import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/app.dart';
import 'core/config/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return const MyApp();
        }),
  );
}
