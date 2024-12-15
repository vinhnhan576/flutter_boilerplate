import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/domain/usecases/sample_usecase.dart';

part 'get_sample_detail_state.dart';

class GetSampleDetailCubit extends Cubit<GetSampleDetailState> {
  GetSampleDetailCubit(this._sampleUsecases) : super(GetSampleDetailInitial());

  final SampleUsecases _sampleUsecases;

  Future<void> getSampleDetail({required String sampleId}) async {
    try {
      emit(const GetSampleDetailLoading());

      final result = await _sampleUsecases.getSampleDetail(sampleId: sampleId);

      result.fold(
        (error) => emit(GetSampleDetailError(message: error.message)),
        (success) => emit(GetSampleDetailLoaded(sample: success)),
      );
    } catch (_) {
      rethrow;
    }
  }
}
