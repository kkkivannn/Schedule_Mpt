// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleEntiti _$ScheduleEntitiFromJson(Map<String, dynamic> json) {
  return _ScheduleEntiti.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEntiti {
  InfoEntiti get info => throw _privateConstructorUsedError;
  List<SubjectsEntiti> get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleEntitiCopyWith<ScheduleEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntitiCopyWith<$Res> {
  factory $ScheduleEntitiCopyWith(
          ScheduleEntiti value, $Res Function(ScheduleEntiti) then) =
      _$ScheduleEntitiCopyWithImpl<$Res, ScheduleEntiti>;
  @useResult
  $Res call({InfoEntiti info, List<SubjectsEntiti> subjects});

  $InfoEntitiCopyWith<$Res> get info;
}

/// @nodoc
class _$ScheduleEntitiCopyWithImpl<$Res, $Val extends ScheduleEntiti>
    implements $ScheduleEntitiCopyWith<$Res> {
  _$ScheduleEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? subjects = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntiti,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectsEntiti>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoEntitiCopyWith<$Res> get info {
    return $InfoEntitiCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleEntitiCopyWith<$Res>
    implements $ScheduleEntitiCopyWith<$Res> {
  factory _$$_ScheduleEntitiCopyWith(
          _$_ScheduleEntiti value, $Res Function(_$_ScheduleEntiti) then) =
      __$$_ScheduleEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoEntiti info, List<SubjectsEntiti> subjects});

  @override
  $InfoEntitiCopyWith<$Res> get info;
}

/// @nodoc
class __$$_ScheduleEntitiCopyWithImpl<$Res>
    extends _$ScheduleEntitiCopyWithImpl<$Res, _$_ScheduleEntiti>
    implements _$$_ScheduleEntitiCopyWith<$Res> {
  __$$_ScheduleEntitiCopyWithImpl(
      _$_ScheduleEntiti _value, $Res Function(_$_ScheduleEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? subjects = null,
  }) {
    return _then(_$_ScheduleEntiti(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntiti,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectsEntiti>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleEntiti implements _ScheduleEntiti {
  const _$_ScheduleEntiti(
      {required this.info, required final List<SubjectsEntiti> subjects})
      : _subjects = subjects;

  factory _$_ScheduleEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleEntitiFromJson(json);

  @override
  final InfoEntiti info;
  final List<SubjectsEntiti> _subjects;
  @override
  List<SubjectsEntiti> get subjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'ScheduleEntiti(info: $info, subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleEntiti &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleEntitiCopyWith<_$_ScheduleEntiti> get copyWith =>
      __$$_ScheduleEntitiCopyWithImpl<_$_ScheduleEntiti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleEntitiToJson(
      this,
    );
  }
}

abstract class _ScheduleEntiti implements ScheduleEntiti {
  const factory _ScheduleEntiti(
      {required final InfoEntiti info,
      required final List<SubjectsEntiti> subjects}) = _$_ScheduleEntiti;

  factory _ScheduleEntiti.fromJson(Map<String, dynamic> json) =
      _$_ScheduleEntiti.fromJson;

  @override
  InfoEntiti get info;
  @override
  List<SubjectsEntiti> get subjects;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleEntitiCopyWith<_$_ScheduleEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
