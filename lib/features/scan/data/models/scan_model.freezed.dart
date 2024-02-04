// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScanModel _$ScanModelFromJson(Map<String, dynamic> json) {
  return _ScanModel.fromJson(json);
}

/// @nodoc
mixin _$ScanModel {
  UserModel? get user => throw _privateConstructorUsedError;
  EstablishmentModel? get establishment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanModelCopyWith<ScanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanModelCopyWith<$Res> {
  factory $ScanModelCopyWith(ScanModel value, $Res Function(ScanModel) then) =
      _$ScanModelCopyWithImpl<$Res, ScanModel>;
  @useResult
  $Res call({UserModel? user, EstablishmentModel? establishment});

  $UserModelCopyWith<$Res>? get user;
  $EstablishmentModelCopyWith<$Res>? get establishment;
}

/// @nodoc
class _$ScanModelCopyWithImpl<$Res, $Val extends ScanModel>
    implements $ScanModelCopyWith<$Res> {
  _$ScanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? establishment = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      establishment: freezed == establishment
          ? _value.establishment
          : establishment // ignore: cast_nullable_to_non_nullable
              as EstablishmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EstablishmentModelCopyWith<$Res>? get establishment {
    if (_value.establishment == null) {
      return null;
    }

    return $EstablishmentModelCopyWith<$Res>(_value.establishment!, (value) {
      return _then(_value.copyWith(establishment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanModelImplCopyWith<$Res>
    implements $ScanModelCopyWith<$Res> {
  factory _$$ScanModelImplCopyWith(
          _$ScanModelImpl value, $Res Function(_$ScanModelImpl) then) =
      __$$ScanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user, EstablishmentModel? establishment});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $EstablishmentModelCopyWith<$Res>? get establishment;
}

/// @nodoc
class __$$ScanModelImplCopyWithImpl<$Res>
    extends _$ScanModelCopyWithImpl<$Res, _$ScanModelImpl>
    implements _$$ScanModelImplCopyWith<$Res> {
  __$$ScanModelImplCopyWithImpl(
      _$ScanModelImpl _value, $Res Function(_$ScanModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? establishment = freezed,
  }) {
    return _then(_$ScanModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      establishment: freezed == establishment
          ? _value.establishment
          : establishment // ignore: cast_nullable_to_non_nullable
              as EstablishmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanModelImpl implements _ScanModel {
  _$ScanModelImpl({this.user, this.establishment});

  factory _$ScanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanModelImplFromJson(json);

  @override
  final UserModel? user;
  @override
  final EstablishmentModel? establishment;

  @override
  String toString() {
    return 'ScanModel(user: $user, establishment: $establishment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.establishment, establishment) ||
                other.establishment == establishment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, establishment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanModelImplCopyWith<_$ScanModelImpl> get copyWith =>
      __$$ScanModelImplCopyWithImpl<_$ScanModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanModelImplToJson(
      this,
    );
  }
}

abstract class _ScanModel implements ScanModel {
  factory _ScanModel(
      {final UserModel? user,
      final EstablishmentModel? establishment}) = _$ScanModelImpl;

  factory _ScanModel.fromJson(Map<String, dynamic> json) =
      _$ScanModelImpl.fromJson;

  @override
  UserModel? get user;
  @override
  EstablishmentModel? get establishment;
  @override
  @JsonKey(ignore: true)
  _$$ScanModelImplCopyWith<_$ScanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
