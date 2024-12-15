part of 'get_sample_list_cubit.dart';

abstract class GetSampleListState extends Equatable {
  const GetSampleListState();

  @override
  List<Object?> get props => [];
}

class GetSampleListInitial extends GetSampleListState {}

class GetSampleListLoading extends GetSampleListState {
  const GetSampleListLoading();
}

class GetSampleListLoaded extends GetSampleListState {
  final List<SampleEntity> samples;

  const GetSampleListLoaded({required this.samples});

  @override
  List<Object> get props => [samples];
}

class GetSampleListError extends GetSampleListState {
  const GetSampleListError({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}
