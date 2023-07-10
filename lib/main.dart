import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/app.dart';
import 'core/config/bloc_observer.dart';
import 'core/config/service_locator.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await initAppModule();
  runApp(
    DevicePreview(
        enabled: false,
        builder: (BuildContext context) {
          return const MyApp();
        }),
  );
}
