part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class GotProfile extends ProfileState {
  const GotProfile(this.res);

  final ProfileEntity res;

  @override
  List<Object?> get props => [res];
}

class GotCachedProfile extends ProfileState {
  const GotCachedProfile(this.res);

  final ProfileEntity res;

  @override
  List<Object?> get props => [res];
}
