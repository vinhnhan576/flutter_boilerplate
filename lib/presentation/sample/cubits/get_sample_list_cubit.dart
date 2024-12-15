import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import 'package:flutter_boilerplate/domain/usecases/sample_usecase.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';

part 'get_sample_list_state.dart';

class GetSampleListCubit extends Cubit<GetSampleListState> {
  GetSampleListCubit(this._sampleUsecases) : super(GetSampleListInitial());

  final List<SampleEntity> _sampleList = [];

  int _page = 1;

  Future<void> getSampleList() async {
    try {
      if (state is! GetSampleListLoaded) {
        emit(const GetSampleListLoading());
      }

      final result =
          await _sampleUsecases.getSamples(page: _page);

      result.fold(
        (error) => emit(GetSampleListError(message: error.message)),
        (success) {
          _page++;
          _sampleList.addAll(success.items
              .where((item) => _sampleList.contains(item) == false));

          emit(GetSampleListLoaded(samples: List.of(_sampleList)));
        },
      );
    } catch (_) {
      rethrow;
    }
  }

  final SampleUsecases _sampleUsecases;
}
