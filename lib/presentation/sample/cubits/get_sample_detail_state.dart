part of 'get_sample_detail_cubit.dart';

abstract class GetSampleDetailState extends Equatable {
  const GetSampleDetailState();

  @override
  List<Object?> get props => [];
}

final class GetSampleDetailInitial extends GetSampleDetailState {}

final class GetSampleDetailLoading extends GetSampleDetailState {
  const GetSampleDetailLoading();
}

final class GetSampleDetailLoaded extends GetSampleDetailState {
  const GetSampleDetailLoaded({required this.sample});

  final SampleEntity sample;

  @override
  List<Object?> get props => [sample];
}

final class GetSampleDetailError extends GetSampleDetailState {
  const GetSampleDetailError({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}
