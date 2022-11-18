// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoEntiti _$InfoEntitiFromJson(Map<String, dynamic> json) {
  return _InfoEntiti.fromJson(json);
}

/// @nodoc
mixin _$InfoEntiti {
  String get day => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoEntitiCopyWith<InfoEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoEntitiCopyWith<$Res> {
  factory $InfoEntitiCopyWith(
          InfoEntiti value, $Res Function(InfoEntiti) then) =
      _$InfoEntitiCopyWithImpl<$Res, InfoEntiti>;
  @useResult
  $Res call({String day, String place});
}

/// @nodoc
class _$InfoEntitiCopyWithImpl<$Res, $Val extends InfoEntiti>
    implements $InfoEntitiCopyWith<$Res> {
  _$InfoEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoEntitiCopyWith<$Res>
    implements $InfoEntitiCopyWith<$Res> {
  factory _$$_InfoEntitiCopyWith(
          _$_InfoEntiti value, $Res Function(_$_InfoEntiti) then) =
      __$$_InfoEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, String place});
}

/// @nodoc
class __$$_InfoEntitiCopyWithImpl<$Res>
    extends _$InfoEntitiCopyWithImpl<$Res, _$_InfoEntiti>
    implements _$$_InfoEntitiCopyWith<$Res> {
  __$$_InfoEntitiCopyWithImpl(
      _$_InfoEntiti _value, $Res Function(_$_InfoEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? place = null,
  }) {
    return _then(_$_InfoEntiti(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoEntiti implements _InfoEntiti {
  const _$_InfoEntiti({required this.day, required this.place});

  factory _$_InfoEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_InfoEntitiFromJson(json);

  @override
  final String day;
  @override
  final String place;

  @override
  String toString() {
    return 'InfoEntiti(day: $day, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoEntiti &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEntitiCopyWith<_$_InfoEntiti> get copyWith =>
      __$$_InfoEntitiCopyWithImpl<_$_InfoEntiti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoEntitiToJson(
      this,
    );
  }
}

abstract class _InfoEntiti implements InfoEntiti {
  const factory _InfoEntiti(
      {required final String day, required final String place}) = _$_InfoEntiti;

  factory _InfoEntiti.fromJson(Map<String, dynamic> json) =
      _$_InfoEntiti.fromJson;

  @override
  String get day;
  @override
  String get place;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEntitiCopyWith<_$_InfoEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
