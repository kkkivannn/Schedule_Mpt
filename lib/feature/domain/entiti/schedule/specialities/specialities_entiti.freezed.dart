// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'specialities_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialitiesEntiti _$SpecialitiesEntitiFromJson(Map<String, dynamic> json) {
  return _SpecialitiesEntiti.fromJson(json);
}

/// @nodoc
mixin _$SpecialitiesEntiti {
  List<String> get specialities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialitiesEntitiCopyWith<SpecialitiesEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialitiesEntitiCopyWith<$Res> {
  factory $SpecialitiesEntitiCopyWith(
          SpecialitiesEntiti value, $Res Function(SpecialitiesEntiti) then) =
      _$SpecialitiesEntitiCopyWithImpl<$Res, SpecialitiesEntiti>;
  @useResult
  $Res call({List<String> specialities});
}

/// @nodoc
class _$SpecialitiesEntitiCopyWithImpl<$Res, $Val extends SpecialitiesEntiti>
    implements $SpecialitiesEntitiCopyWith<$Res> {
  _$SpecialitiesEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialities = null,
  }) {
    return _then(_value.copyWith(
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpecialitiesEntitiCopyWith<$Res>
    implements $SpecialitiesEntitiCopyWith<$Res> {
  factory _$$_SpecialitiesEntitiCopyWith(_$_SpecialitiesEntiti value,
          $Res Function(_$_SpecialitiesEntiti) then) =
      __$$_SpecialitiesEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> specialities});
}

/// @nodoc
class __$$_SpecialitiesEntitiCopyWithImpl<$Res>
    extends _$SpecialitiesEntitiCopyWithImpl<$Res, _$_SpecialitiesEntiti>
    implements _$$_SpecialitiesEntitiCopyWith<$Res> {
  __$$_SpecialitiesEntitiCopyWithImpl(
      _$_SpecialitiesEntiti _value, $Res Function(_$_SpecialitiesEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialities = null,
  }) {
    return _then(_$_SpecialitiesEntiti(
      specialities: null == specialities
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecialitiesEntiti implements _SpecialitiesEntiti {
  const _$_SpecialitiesEntiti({required final List<String> specialities})
      : _specialities = specialities;

  factory _$_SpecialitiesEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialitiesEntitiFromJson(json);

  final List<String> _specialities;
  @override
  List<String> get specialities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  @override
  String toString() {
    return 'SpecialitiesEntiti(specialities: $specialities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecialitiesEntiti &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_specialities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecialitiesEntitiCopyWith<_$_SpecialitiesEntiti> get copyWith =>
      __$$_SpecialitiesEntitiCopyWithImpl<_$_SpecialitiesEntiti>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialitiesEntitiToJson(
      this,
    );
  }
}

abstract class _SpecialitiesEntiti implements SpecialitiesEntiti {
  const factory _SpecialitiesEntiti(
      {required final List<String> specialities}) = _$_SpecialitiesEntiti;

  factory _SpecialitiesEntiti.fromJson(Map<String, dynamic> json) =
      _$_SpecialitiesEntiti.fromJson;

  @override
  List<String> get specialities;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialitiesEntitiCopyWith<_$_SpecialitiesEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
