part of 'sample_bloc.dart';

sealed class SampleEvent extends Equatable {
  const SampleEvent();

  @override
  List<Object?> get props => [];
}

final class SampleFetched extends SampleEvent {
  const SampleFetched();
}
