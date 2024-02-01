part of 'route_bloc.dart';

@freezed
class RouteEvent extends Equatable {
  const RouteEvent();

  @override
  List<Object?> get props => [];
}

class OnCheckAuth extends RouteEvent {}