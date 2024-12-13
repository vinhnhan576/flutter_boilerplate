import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';

import '../../../domain/entities/export_entities.dart';
import '../../../domain/usecases/export_usecases.dart';

part 'get_sample_list_state.dart';

class GetSampleListCubit extends Cubit<GetSampleListState> {
  GetSampleListCubit(this._sampleUsecases) : super(GetSampleListInitial());

  final SampleUsecases _sampleUsecases;

  Future<void> getSampleList() async {
    try {
      emit(const GetSampleListLoading());

      final result = await _sampleUsecases.getSamples(perPage: 10, page: 1);

      result.fold(
        (error) => emit(GetSampleListError(message: error.message)),
        (success) => emit(GetSampleListLoaded(sampleList: success)),
      );
    } catch (_) {
      rethrow;
    }
  }
}
