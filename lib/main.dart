import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UI/app.dart';

// Providers
import 'providers/settings_provider.dart';

// Services
import 'services/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Services
  await LocalStorageService.init();

  // Create app Widget
  const Widget app = MyApp();

  // Create providers
  MultiProvider providers = MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SettingsProvider()),
    ],
    child: app,
  );

  // Run the providers widget that containes the app. The app listens to the
  // providers and update itself accordingly
  runApp(providers);
}
