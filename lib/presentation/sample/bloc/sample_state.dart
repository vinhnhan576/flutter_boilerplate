part of 'sample_bloc.dart';

enum SampleStatus { initial, loading, loaded, error }

final class SampleState extends Equatable {
  final SampleStatus status;
  final SampleListingEntity? samples;
  final String? errorMessage;

  const SampleState._({
    required this.status,
    this.samples,
    this.errorMessage,
  });

  const SampleState.initial() : this._(status: SampleStatus.initial);

  const SampleState.loading() : this._(status: SampleStatus.loading);

  const SampleState.loaded(SampleListingEntity samples)
      : this._(
          status: SampleStatus.loaded,
          samples: samples,
        );

  const SampleState.error(String message)
      : this._(
          status: SampleStatus.error,
          errorMessage: message,
        );

  @override
  List<Object?> get props => [status, samples, errorMessage];
}
