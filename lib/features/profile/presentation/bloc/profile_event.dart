part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class OnGetProfile extends ProfileEvent {}

class OnGetCachedProfile extends ProfileEvent {}
