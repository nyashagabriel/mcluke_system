import 'package:flutter/material.dart';
import 'package:mcluke_system/core/extensions/hive_extensions.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:mcluke_system/core/app/app.dart';
import 'package:mcluke_system/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initializeSupabase();
  await _initializeHive();
  configureDependencyInjection();

  runApp(
    const FlutterSupabaseStarterApp(),
  );
}

Future<void> _initializeSupabase() async {
  await Supabase.initialize(
    url: "https://mkxuvdfevzqcndtfwjqw.supabase.co",
    anonKey: "sb_publishable_TnvM_JU1mNt0xOd8dRi5DQ_ezQSPUb7",
  );
}

Future<void> _initializeHive() async {
  await Hive.initFlutter();
  await Hive.openThemeModeBox();
}
