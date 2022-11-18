// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'replace_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplaceEntiti _$ReplaceEntitiFromJson(Map<String, dynamic> json) {
  return _ReplaceEntiti.fromJson(json);
}

/// @nodoc
mixin _$ReplaceEntiti {
  String get from => throw _privateConstructorUsedError;
  String get lessonNumber => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplaceEntitiCopyWith<ReplaceEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplaceEntitiCopyWith<$Res> {
  factory $ReplaceEntitiCopyWith(
          ReplaceEntiti value, $Res Function(ReplaceEntiti) then) =
      _$ReplaceEntitiCopyWithImpl<$Res, ReplaceEntiti>;
  @useResult
  $Res call({String from, String lessonNumber, String to, String updateAt});
}

/// @nodoc
class _$ReplaceEntitiCopyWithImpl<$Res, $Val extends ReplaceEntiti>
    implements $ReplaceEntitiCopyWith<$Res> {
  _$ReplaceEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? lessonNumber = null,
    Object? to = null,
    Object? updateAt = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      lessonNumber: null == lessonNumber
          ? _value.lessonNumber
          : lessonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplaceEntitiCopyWith<$Res>
    implements $ReplaceEntitiCopyWith<$Res> {
  factory _$$_ReplaceEntitiCopyWith(
          _$_ReplaceEntiti value, $Res Function(_$_ReplaceEntiti) then) =
      __$$_ReplaceEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String lessonNumber, String to, String updateAt});
}

/// @nodoc
class __$$_ReplaceEntitiCopyWithImpl<$Res>
    extends _$ReplaceEntitiCopyWithImpl<$Res, _$_ReplaceEntiti>
    implements _$$_ReplaceEntitiCopyWith<$Res> {
  __$$_ReplaceEntitiCopyWithImpl(
      _$_ReplaceEntiti _value, $Res Function(_$_ReplaceEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? lessonNumber = null,
    Object? to = null,
    Object? updateAt = null,
  }) {
    return _then(_$_ReplaceEntiti(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      lessonNumber: null == lessonNumber
          ? _value.lessonNumber
          : lessonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplaceEntiti implements _ReplaceEntiti {
  const _$_ReplaceEntiti(
      {required this.from,
      required this.lessonNumber,
      required this.to,
      required this.updateAt});

  factory _$_ReplaceEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_ReplaceEntitiFromJson(json);

  @override
  final String from;
  @override
  final String lessonNumber;
  @override
  final String to;
  @override
  final String updateAt;

  @override
  String toString() {
    return 'ReplaceEntiti(from: $from, lessonNumber: $lessonNumber, to: $to, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceEntiti &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lessonNumber, lessonNumber) ||
                other.lessonNumber == lessonNumber) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, lessonNumber, to, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceEntitiCopyWith<_$_ReplaceEntiti> get copyWith =>
      __$$_ReplaceEntitiCopyWithImpl<_$_ReplaceEntiti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplaceEntitiToJson(
      this,
    );
  }
}

abstract class _ReplaceEntiti implements ReplaceEntiti {
  const factory _ReplaceEntiti(
      {required final String from,
      required final String lessonNumber,
      required final String to,
      required final String updateAt}) = _$_ReplaceEntiti;

  factory _ReplaceEntiti.fromJson(Map<String, dynamic> json) =
      _$_ReplaceEntiti.fromJson;

  @override
  String get from;
  @override
  String get lessonNumber;
  @override
  String get to;
  @override
  String get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReplaceEntitiCopyWith<_$_ReplaceEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
