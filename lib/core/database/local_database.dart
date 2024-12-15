import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_boilerplate/data/data_sources/local/_collections/sample_collection.dart';

class LocalDatabase {
  late final Isar _db;

  bool _isInitialized = false;

  Isar get db => _isInitialized
      ? _db
      : throw Exception('LocalDatabase is not initialized');

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _db = await Isar.open(
      [SampleCollectionSchema],
      directory: dir.path,
    );
    _isInitialized = true;
  }
}
