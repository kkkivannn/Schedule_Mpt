// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subjects_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectsModel _$SubjectsModelFromJson(Map<String, dynamic> json) {
  return _SubjectsModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectsModel {
  String get number => throw _privateConstructorUsedError;
  SubjectModel get subject => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsModelCopyWith<SubjectsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsModelCopyWith<$Res> {
  factory $SubjectsModelCopyWith(
          SubjectsModel value, $Res Function(SubjectsModel) then) =
      _$SubjectsModelCopyWithImpl<$Res, SubjectsModel>;
  @useResult
  $Res call({String number, SubjectModel subject, String teacher});

  $SubjectModelCopyWith<$Res> get subject;
}

/// @nodoc
class _$SubjectsModelCopyWithImpl<$Res, $Val extends SubjectsModel>
    implements $SubjectsModelCopyWith<$Res> {
  _$SubjectsModelCopyWithImpl(this._value, this._then);

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
              as SubjectModel,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectModelCopyWith<$Res> get subject {
    return $SubjectModelCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubjectsModelCopyWith<$Res>
    implements $SubjectsModelCopyWith<$Res> {
  factory _$$_SubjectsModelCopyWith(
          _$_SubjectsModel value, $Res Function(_$_SubjectsModel) then) =
      __$$_SubjectsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, SubjectModel subject, String teacher});

  @override
  $SubjectModelCopyWith<$Res> get subject;
}

/// @nodoc
class __$$_SubjectsModelCopyWithImpl<$Res>
    extends _$SubjectsModelCopyWithImpl<$Res, _$_SubjectsModel>
    implements _$$_SubjectsModelCopyWith<$Res> {
  __$$_SubjectsModelCopyWithImpl(
      _$_SubjectsModel _value, $Res Function(_$_SubjectsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? subject = null,
    Object? teacher = null,
  }) {
    return _then(_$_SubjectsModel(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectModel,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectsModel implements _SubjectsModel {
  const _$_SubjectsModel(
      {required this.number, required this.subject, required this.teacher});

  factory _$_SubjectsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectsModelFromJson(json);

  @override
  final String number;
  @override
  final SubjectModel subject;
  @override
  final String teacher;

  @override
  String toString() {
    return 'SubjectsModel(number: $number, subject: $subject, teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectsModel &&
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
  _$$_SubjectsModelCopyWith<_$_SubjectsModel> get copyWith =>
      __$$_SubjectsModelCopyWithImpl<_$_SubjectsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectsModelToJson(
      this,
    );
  }
}

abstract class _SubjectsModel implements SubjectsModel {
  const factory _SubjectsModel(
      {required final String number,
      required final SubjectModel subject,
      required final String teacher}) = _$_SubjectsModel;

  factory _SubjectsModel.fromJson(Map<String, dynamic> json) =
      _$_SubjectsModel.fromJson;

  @override
  String get number;
  @override
  SubjectModel get subject;
  @override
  String get teacher;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectsModelCopyWith<_$_SubjectsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
