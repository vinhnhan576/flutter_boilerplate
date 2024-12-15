import 'sample_local_data_source.dart';
import 'package:flutter_boilerplate/core/database/local_database.dart';
import 'package:flutter_boilerplate/data/data_sources/local/_collections/sample_collection.dart';

class SampleLocalDataSourceImpl implements SampleLocalDataSource {
  final LocalDatabase _localDatabase;

  SampleLocalDataSourceImpl(this._localDatabase);

  @override
  Future<void> saveSample({required SampleCollection sample}) async {
    try {
      final db = _localDatabase.db;
      await db.writeTxn(() async => await db.sampleCollections.put(sample));
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteSample({required int sampleId}) async {
    try {
      final db = _localDatabase.db;
      await db.writeTxn(() async {
        await db.sampleCollections.delete(sampleId);
      });
    } catch (_) {
      rethrow;
    }
  }
}
