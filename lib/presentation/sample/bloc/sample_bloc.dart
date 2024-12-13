import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/sample/sample_listing_entity.dart';
import '../../../domain/repositories/sample_repository.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  final SampleRepository _repository;

  SampleBloc(this._repository) : super(const SampleState.initial()) {
    on<SampleFetched>(_onSampleFetched);
  }

  Future<void> _onSampleFetched(
    SampleFetched event,
    Emitter<SampleState> emit,
  ) async {
    emit(const SampleState.loading());

    final result = await _repository.getSamples();

    result.fold(
      (failure) => emit(SampleState.error(failure.message)),
      (samples) => emit(SampleState.loaded(samples)),
    );
  }
}
