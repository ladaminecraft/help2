import 'package:hive/hive.dart';
import 'package:letenkov_lab_3/models/query_data/query_data.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await path_provider.getApplicationDocumentsDirectory();
  Hive.registerAdapter(QueryDataAdapter());
  Hive.init(directory.path);
  runApp(const MyApp());
}
