// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'replacement_entiti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplacementEntiti _$ReplacementEntitiFromJson(Map<String, dynamic> json) {
  return _ReplacementEntiti.fromJson(json);
}

/// @nodoc
mixin _$ReplacementEntiti {
  List<ReplaceEntiti> get replacement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplacementEntitiCopyWith<ReplacementEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplacementEntitiCopyWith<$Res> {
  factory $ReplacementEntitiCopyWith(
          ReplacementEntiti value, $Res Function(ReplacementEntiti) then) =
      _$ReplacementEntitiCopyWithImpl<$Res, ReplacementEntiti>;
  @useResult
  $Res call({List<ReplaceEntiti> replacement});
}

/// @nodoc
class _$ReplacementEntitiCopyWithImpl<$Res, $Val extends ReplacementEntiti>
    implements $ReplacementEntitiCopyWith<$Res> {
  _$ReplacementEntitiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replacement = null,
  }) {
    return _then(_value.copyWith(
      replacement: null == replacement
          ? _value.replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as List<ReplaceEntiti>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplacementEntitiCopyWith<$Res>
    implements $ReplacementEntitiCopyWith<$Res> {
  factory _$$_ReplacementEntitiCopyWith(_$_ReplacementEntiti value,
          $Res Function(_$_ReplacementEntiti) then) =
      __$$_ReplacementEntitiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReplaceEntiti> replacement});
}

/// @nodoc
class __$$_ReplacementEntitiCopyWithImpl<$Res>
    extends _$ReplacementEntitiCopyWithImpl<$Res, _$_ReplacementEntiti>
    implements _$$_ReplacementEntitiCopyWith<$Res> {
  __$$_ReplacementEntitiCopyWithImpl(
      _$_ReplacementEntiti _value, $Res Function(_$_ReplacementEntiti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replacement = null,
  }) {
    return _then(_$_ReplacementEntiti(
      replacement: null == replacement
          ? _value._replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as List<ReplaceEntiti>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplacementEntiti implements _ReplacementEntiti {
  const _$_ReplacementEntiti({required final List<ReplaceEntiti> replacement})
      : _replacement = replacement;

  factory _$_ReplacementEntiti.fromJson(Map<String, dynamic> json) =>
      _$$_ReplacementEntitiFromJson(json);

  final List<ReplaceEntiti> _replacement;
  @override
  List<ReplaceEntiti> get replacement {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replacement);
  }

  @override
  String toString() {
    return 'ReplacementEntiti(replacement: $replacement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplacementEntiti &&
            const DeepCollectionEquality()
                .equals(other._replacement, _replacement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_replacement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplacementEntitiCopyWith<_$_ReplacementEntiti> get copyWith =>
      __$$_ReplacementEntitiCopyWithImpl<_$_ReplacementEntiti>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplacementEntitiToJson(
      this,
    );
  }
}

abstract class _ReplacementEntiti implements ReplacementEntiti {
  const factory _ReplacementEntiti(
      {required final List<ReplaceEntiti> replacement}) = _$_ReplacementEntiti;

  factory _ReplacementEntiti.fromJson(Map<String, dynamic> json) =
      _$_ReplacementEntiti.fromJson;

  @override
  List<ReplaceEntiti> get replacement;
  @override
  @JsonKey(ignore: true)
  _$$_ReplacementEntitiCopyWith<_$_ReplacementEntiti> get copyWith =>
      throw _privateConstructorUsedError;
}
