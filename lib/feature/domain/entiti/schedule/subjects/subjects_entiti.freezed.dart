// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subjects_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectsEntiti _$SubjectsEntitiFromJson(Map<String, dynamic> json) {
  return _SubjectsEntiti.fromJson(json);
}

/// @nodoc
mixin _$SubjectsEntiti {
  String get number => throw _privateConstructorUsedError;
  SubjectEntiti get subject => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsEntitiCopyWith<SubjectsEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsEntitiCopyWith<$Res> {
  factory $SubjectsEntitiCopyWith(
          SubjectsEntiti value, $Res Function(SubjectsEntiti) then) =
      _$SubjectsEntitiCopyWithImpl<$Res, SubjectsEntiti>;
  @useResult
  $Res call({String number, SubjectEntiti subject, String teacher});

  $SubjectEntitiCopyWith<$Res> get subject;
}

/// @nodoc
class _$SubjectsEntitiCopyWithImpl<$Res, $Val extends SubjectsEntiti>
    implements $SubjectsEntitiCopyWith<$Res> {
  _$SubjectsEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? subject = null,
    Object? teacher = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectEntiti,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectEntitiCopyWith<$Res> get subject {
    return $SubjectEntitiCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubjectsEntitiCopyWith<$Res>
    implements $SubjectsEntitiCopyWith<$Res> {
  factory _$$_SubjectsEntitiCopyWith(
          _$_SubjectsEntiti value, $Res Function(_$_SubjectsEntiti) then) =
      __$$_SubjectsEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, SubjectEntiti subject, String teacher});

  @override
  $SubjectEntitiCopyWith<$Res> get subject;
}

/// @nodoc
class __$$_SubjectsEntitiCopyWithImpl<$Res>
    extends _$SubjectsEntitiCopyWithImpl<$Res, _$_SubjectsEntiti>
    implements _$$_SubjectsEntitiCopyWith<$Res> {
  __$$_SubjectsEntitiCopyWithImpl(
      _$_SubjectsEntiti _value, $Res Function(_$_SubjectsEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? subject = null,
    Object? teacher = null,
  }) {
    return _then(_$_SubjectsEntiti(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectEntiti,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectsEntiti implements _SubjectsEntiti {
  const _$_SubjectsEntiti(
      {required this.number, required this.subject, required this.teacher});

  factory _$_SubjectsEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectsEntitiFromJson(json);

  @override
  final String number;
  @override
  final SubjectEntiti subject;
  @override
  final String teacher;

  @override
  String toString() {
    return 'SubjectsEntiti(number: $number, subject: $subject, teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectsEntiti &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, subject, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectsEntitiCopyWith<_$_SubjectsEntiti> get copyWith =>
      __$$_SubjectsEntitiCopyWithImpl<_$_SubjectsEntiti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectsEntitiToJson(
      this,
    );
  }
}

abstract class _SubjectsEntiti implements SubjectsEntiti {
  const factory _SubjectsEntiti(
      {required final String number,
      required final SubjectEntiti subject,
      required final String teacher}) = _$_SubjectsEntiti;

  factory _SubjectsEntiti.fromJson(Map<String, dynamic> json) =
      _$_SubjectsEntiti.fromJson;

  @override
  String get number;
  @override
  SubjectEntiti get subject;
  @override
  String get teacher;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectsEntitiCopyWith<_$_SubjectsEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
