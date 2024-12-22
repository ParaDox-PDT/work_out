part of 'personalisation_bloc.dart';

final class PersonalisationState extends Equatable {
  const PersonalisationState({this.page = 0});

  final int page;

  PersonalisationState copyWith({
    int? page,
  }) =>
      PersonalisationState(
        page: page ?? this.page,
      );

  @override
  List<Object> get props => [page];
}
