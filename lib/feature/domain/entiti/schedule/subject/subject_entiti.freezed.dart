// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subject_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectEntiti _$SubjectEntitiFromJson(Map<String, dynamic> json) {
  return _SubjectEntiti.fromJson(json);
}

/// @nodoc
mixin _$SubjectEntiti {
  String get subject => throw _privateConstructorUsedError;
  String get week => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectEntitiCopyWith<SubjectEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEntitiCopyWith<$Res> {
  factory $SubjectEntitiCopyWith(
          SubjectEntiti value, $Res Function(SubjectEntiti) then) =
      _$SubjectEntitiCopyWithImpl<$Res, SubjectEntiti>;
  @useResult
  $Res call({String subject, String week});
}

/// @nodoc
class _$SubjectEntitiCopyWithImpl<$Res, $Val extends SubjectEntiti>
    implements $SubjectEntitiCopyWith<$Res> {
  _$SubjectEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? week = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectEntitiCopyWith<$Res>
    implements $SubjectEntitiCopyWith<$Res> {
  factory _$$_SubjectEntitiCopyWith(
          _$_SubjectEntiti value, $Res Function(_$_SubjectEntiti) then) =
      __$$_SubjectEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String week});
}

/// @nodoc
class __$$_SubjectEntitiCopyWithImpl<$Res>
    extends _$SubjectEntitiCopyWithImpl<$Res, _$_SubjectEntiti>
    implements _$$_SubjectEntitiCopyWith<$Res> {
  __$$_SubjectEntitiCopyWithImpl(
      _$_SubjectEntiti _value, $Res Function(_$_SubjectEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? week = null,
  }) {
    return _then(_$_SubjectEntiti(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectEntiti implements _SubjectEntiti {
  const _$_SubjectEntiti({required this.subject, required this.week});

  factory _$_SubjectEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectEntitiFromJson(json);

  @override
  final String subject;
  @override
  final String week;

  @override
  String toString() {
    return 'SubjectEntiti(subject: $subject, week: $week)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectEntiti &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.week, week) || other.week == week));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, week);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectEntitiCopyWith<_$_SubjectEntiti> get copyWith =>
      __$$_SubjectEntitiCopyWithImpl<_$_SubjectEntiti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectEntitiToJson(
      this,
    );
  }
}

abstract class _SubjectEntiti implements SubjectEntiti {
  const factory _SubjectEntiti(
      {required final String subject,
      required final String week}) = _$_SubjectEntiti;

  factory _SubjectEntiti.fromJson(Map<String, dynamic> json) =
      _$_SubjectEntiti.fromJson;

  @override
  String get subject;
  @override
  String get week;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectEntitiCopyWith<_$_SubjectEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
