
import 'package:flutter/material.dart';
import 'package:teacher_antoree/src/customViews/locator.dart';

import 'app.dart';
import 'app_config.dart';
import 'const/sharedPreferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.getInstance();
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: Colors.transparent, // transparent status bar
//  ));
//  SystemChrome.setEnabledSystemUIOverlays([])
  setupLocator();

  var configuredApp = new AppConfig(
    appName: 'Antoree Teacher ',
    flavorName: 'prod',
    apiBaseUrl: 'https://api-gateway.prod.antoree.tech',
    gateBaseUrl: 'https://gate.prod.antoree.tech',
    child: App(),
  );
  runApp(configuredApp);
}
