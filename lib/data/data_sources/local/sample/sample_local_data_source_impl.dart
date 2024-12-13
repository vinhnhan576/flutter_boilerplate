import '../../../models/sample/sample_model.dart';
import 'sample_local_data_source.dart';
import '../../../../core/database/local_database.dart';
import '../_collections/sample_collection.dart';

class SampleLocalDataSourceImpl implements SampleLocalDataSource {
  final LocalDatabase _localDatabase;

  SampleLocalDataSourceImpl(this._localDatabase);

  @override
  Future<void> saveSample({required SampleCollection sample}) async {
    try {
      final db = _localDatabase.db;
      await db.writeTxn(() async => db.sampleCollections.put(sample));
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
