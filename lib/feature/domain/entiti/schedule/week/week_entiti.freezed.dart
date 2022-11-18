// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'week_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekEntiti {
  String get week => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekEntitiCopyWith<WeekEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekEntitiCopyWith<$Res> {
  factory $WeekEntitiCopyWith(
          WeekEntiti value, $Res Function(WeekEntiti) then) =
      _$WeekEntitiCopyWithImpl<$Res, WeekEntiti>;
  @useResult
  $Res call({String week});
}

/// @nodoc
class _$WeekEntitiCopyWithImpl<$Res, $Val extends WeekEntiti>
    implements $WeekEntitiCopyWith<$Res> {
  _$WeekEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekEntitiCopyWith<$Res>
    implements $WeekEntitiCopyWith<$Res> {
  factory _$$_WeekEntitiCopyWith(
          _$_WeekEntiti value, $Res Function(_$_WeekEntiti) then) =
      __$$_WeekEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String week});
}

/// @nodoc
class __$$_WeekEntitiCopyWithImpl<$Res>
    extends _$WeekEntitiCopyWithImpl<$Res, _$_WeekEntiti>
    implements _$$_WeekEntitiCopyWith<$Res> {
  __$$_WeekEntitiCopyWithImpl(
      _$_WeekEntiti _value, $Res Function(_$_WeekEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
  }) {
    return _then(_$_WeekEntiti(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeekEntiti implements _WeekEntiti {
  const _$_WeekEntiti({required this.week});

  @override
  final String week;

  @override
  String toString() {
    return 'WeekEntiti(week: $week)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekEntiti &&
            (identical(other.week, week) || other.week == week));
  }

  @override
  int get hashCode => Object.hash(runtimeType, week);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekEntitiCopyWith<_$_WeekEntiti> get copyWith =>
      __$$_WeekEntitiCopyWithImpl<_$_WeekEntiti>(this, _$identity);
}

abstract class _WeekEntiti implements WeekEntiti {
  const factory _WeekEntiti({required final String week}) = _$_WeekEntiti;

  @override
  String get week;
  @override
  @JsonKey(ignore: true)
  _$$_WeekEntitiCopyWith<_$_WeekEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
