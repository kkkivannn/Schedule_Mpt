// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_builder_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleBuilderState _$ScheduleBuilderStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notHaveSchedule':
      return _ScheduleBuilderNotHaveSchedule.fromJson(json);
    case 'haveSchedule':
      return _ScheduleBuilderHaveSchedule.fromJson(json);
    case 'waiting':
      return _ScheduleBuilderWaiting.fromJson(json);
    case 'error':
      return _ScheduleBuilderError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ScheduleBuilderState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ScheduleBuilderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notHaveSchedule,
    required TResult Function(ScheduleModel scheduleModel) haveSchedule,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notHaveSchedule,
    TResult? Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notHaveSchedule,
    TResult Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleBuilderNotHaveSchedule value)
        notHaveSchedule,
    required TResult Function(_ScheduleBuilderHaveSchedule value) haveSchedule,
    required TResult Function(_ScheduleBuilderWaiting value) waiting,
    required TResult Function(_ScheduleBuilderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult? Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult? Function(_ScheduleBuilderWaiting value)? waiting,
    TResult? Function(_ScheduleBuilderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult Function(_ScheduleBuilderWaiting value)? waiting,
    TResult Function(_ScheduleBuilderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleBuilderStateCopyWith<$Res> {
  factory $ScheduleBuilderStateCopyWith(ScheduleBuilderState value,
          $Res Function(ScheduleBuilderState) then) =
      _$ScheduleBuilderStateCopyWithImpl<$Res, ScheduleBuilderState>;
}

/// @nodoc
class _$ScheduleBuilderStateCopyWithImpl<$Res,
        $Val extends ScheduleBuilderState>
    implements $ScheduleBuilderStateCopyWith<$Res> {
  _$ScheduleBuilderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ScheduleBuilderNotHaveScheduleCopyWith<$Res> {
  factory _$$_ScheduleBuilderNotHaveScheduleCopyWith(
          _$_ScheduleBuilderNotHaveSchedule value,
          $Res Function(_$_ScheduleBuilderNotHaveSchedule) then) =
      __$$_ScheduleBuilderNotHaveScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ScheduleBuilderNotHaveScheduleCopyWithImpl<$Res>
    extends _$ScheduleBuilderStateCopyWithImpl<$Res,
        _$_ScheduleBuilderNotHaveSchedule>
    implements _$$_ScheduleBuilderNotHaveScheduleCopyWith<$Res> {
  __$$_ScheduleBuilderNotHaveScheduleCopyWithImpl(
      _$_ScheduleBuilderNotHaveSchedule _value,
      $Res Function(_$_ScheduleBuilderNotHaveSchedule) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleBuilderNotHaveSchedule
    implements _ScheduleBuilderNotHaveSchedule {
  _$_ScheduleBuilderNotHaveSchedule({final String? $type})
      : $type = $type ?? 'notHaveSchedule';

  factory _$_ScheduleBuilderNotHaveSchedule.fromJson(
          Map<String, dynamic> json) =>
      _$$_ScheduleBuilderNotHaveScheduleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScheduleBuilderState.notHaveSchedule()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleBuilderNotHaveSchedule);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notHaveSchedule,
    required TResult Function(ScheduleModel scheduleModel) haveSchedule,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notHaveSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notHaveSchedule,
    TResult? Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return notHaveSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notHaveSchedule,
    TResult Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notHaveSchedule != null) {
      return notHaveSchedule();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleBuilderNotHaveSchedule value)
        notHaveSchedule,
    required TResult Function(_ScheduleBuilderHaveSchedule value) haveSchedule,
    required TResult Function(_ScheduleBuilderWaiting value) waiting,
    required TResult Function(_ScheduleBuilderError value) error,
  }) {
    return notHaveSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult? Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult? Function(_ScheduleBuilderWaiting value)? waiting,
    TResult? Function(_ScheduleBuilderError value)? error,
  }) {
    return notHaveSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult Function(_ScheduleBuilderWaiting value)? waiting,
    TResult Function(_ScheduleBuilderError value)? error,
    required TResult orElse(),
  }) {
    if (notHaveSchedule != null) {
      return notHaveSchedule(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleBuilderNotHaveScheduleToJson(
      this,
    );
  }
}

abstract class _ScheduleBuilderNotHaveSchedule implements ScheduleBuilderState {
  factory _ScheduleBuilderNotHaveSchedule() = _$_ScheduleBuilderNotHaveSchedule;

  factory _ScheduleBuilderNotHaveSchedule.fromJson(Map<String, dynamic> json) =
      _$_ScheduleBuilderNotHaveSchedule.fromJson;
}

/// @nodoc
abstract class _$$_ScheduleBuilderHaveScheduleCopyWith<$Res> {
  factory _$$_ScheduleBuilderHaveScheduleCopyWith(
          _$_ScheduleBuilderHaveSchedule value,
          $Res Function(_$_ScheduleBuilderHaveSchedule) then) =
      __$$_ScheduleBuilderHaveScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleModel scheduleModel});
}

/// @nodoc
class __$$_ScheduleBuilderHaveScheduleCopyWithImpl<$Res>
    extends _$ScheduleBuilderStateCopyWithImpl<$Res,
        _$_ScheduleBuilderHaveSchedule>
    implements _$$_ScheduleBuilderHaveScheduleCopyWith<$Res> {
  __$$_ScheduleBuilderHaveScheduleCopyWithImpl(
      _$_ScheduleBuilderHaveSchedule _value,
      $Res Function(_$_ScheduleBuilderHaveSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleModel = null,
  }) {
    return _then(_$_ScheduleBuilderHaveSchedule(
      null == scheduleModel
          ? _value.scheduleModel
          : scheduleModel // ignore: cast_nullable_to_non_nullable
              as ScheduleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleBuilderHaveSchedule implements _ScheduleBuilderHaveSchedule {
  _$_ScheduleBuilderHaveSchedule(this.scheduleModel, {final String? $type})
      : $type = $type ?? 'haveSchedule';

  factory _$_ScheduleBuilderHaveSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleBuilderHaveScheduleFromJson(json);

  @override
  final ScheduleModel scheduleModel;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScheduleBuilderState.haveSchedule(scheduleModel: $scheduleModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleBuilderHaveSchedule &&
            const DeepCollectionEquality()
                .equals(other.scheduleModel, scheduleModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scheduleModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleBuilderHaveScheduleCopyWith<_$_ScheduleBuilderHaveSchedule>
      get copyWith => __$$_ScheduleBuilderHaveScheduleCopyWithImpl<
          _$_ScheduleBuilderHaveSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notHaveSchedule,
    required TResult Function(ScheduleModel scheduleModel) haveSchedule,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return haveSchedule(scheduleModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notHaveSchedule,
    TResult? Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return haveSchedule?.call(scheduleModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notHaveSchedule,
    TResult Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (haveSchedule != null) {
      return haveSchedule(scheduleModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleBuilderNotHaveSchedule value)
        notHaveSchedule,
    required TResult Function(_ScheduleBuilderHaveSchedule value) haveSchedule,
    required TResult Function(_ScheduleBuilderWaiting value) waiting,
    required TResult Function(_ScheduleBuilderError value) error,
  }) {
    return haveSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult? Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult? Function(_ScheduleBuilderWaiting value)? waiting,
    TResult? Function(_ScheduleBuilderError value)? error,
  }) {
    return haveSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult Function(_ScheduleBuilderWaiting value)? waiting,
    TResult Function(_ScheduleBuilderError value)? error,
    required TResult orElse(),
  }) {
    if (haveSchedule != null) {
      return haveSchedule(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleBuilderHaveScheduleToJson(
      this,
    );
  }
}

abstract class _ScheduleBuilderHaveSchedule implements ScheduleBuilderState {
  factory _ScheduleBuilderHaveSchedule(final ScheduleModel scheduleModel) =
      _$_ScheduleBuilderHaveSchedule;

  factory _ScheduleBuilderHaveSchedule.fromJson(Map<String, dynamic> json) =
      _$_ScheduleBuilderHaveSchedule.fromJson;

  ScheduleModel get scheduleModel;
  @JsonKey(ignore: true)
  _$$_ScheduleBuilderHaveScheduleCopyWith<_$_ScheduleBuilderHaveSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScheduleBuilderWaitingCopyWith<$Res> {
  factory _$$_ScheduleBuilderWaitingCopyWith(_$_ScheduleBuilderWaiting value,
          $Res Function(_$_ScheduleBuilderWaiting) then) =
      __$$_ScheduleBuilderWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ScheduleBuilderWaitingCopyWithImpl<$Res>
    extends _$ScheduleBuilderStateCopyWithImpl<$Res, _$_ScheduleBuilderWaiting>
    implements _$$_ScheduleBuilderWaitingCopyWith<$Res> {
  __$$_ScheduleBuilderWaitingCopyWithImpl(_$_ScheduleBuilderWaiting _value,
      $Res Function(_$_ScheduleBuilderWaiting) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleBuilderWaiting implements _ScheduleBuilderWaiting {
  _$_ScheduleBuilderWaiting({final String? $type}) : $type = $type ?? 'waiting';

  factory _$_ScheduleBuilderWaiting.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleBuilderWaitingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScheduleBuilderState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleBuilderWaiting);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notHaveSchedule,
    required TResult Function(ScheduleModel scheduleModel) haveSchedule,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notHaveSchedule,
    TResult? Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notHaveSchedule,
    TResult Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleBuilderNotHaveSchedule value)
        notHaveSchedule,
    required TResult Function(_ScheduleBuilderHaveSchedule value) haveSchedule,
    required TResult Function(_ScheduleBuilderWaiting value) waiting,
    required TResult Function(_ScheduleBuilderError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult? Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult? Function(_ScheduleBuilderWaiting value)? waiting,
    TResult? Function(_ScheduleBuilderError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult Function(_ScheduleBuilderWaiting value)? waiting,
    TResult Function(_ScheduleBuilderError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleBuilderWaitingToJson(
      this,
    );
  }
}

abstract class _ScheduleBuilderWaiting implements ScheduleBuilderState {
  factory _ScheduleBuilderWaiting() = _$_ScheduleBuilderWaiting;

  factory _ScheduleBuilderWaiting.fromJson(Map<String, dynamic> json) =
      _$_ScheduleBuilderWaiting.fromJson;
}

/// @nodoc
abstract class _$$_ScheduleBuilderErrorCopyWith<$Res> {
  factory _$$_ScheduleBuilderErrorCopyWith(_$_ScheduleBuilderError value,
          $Res Function(_$_ScheduleBuilderError) then) =
      __$$_ScheduleBuilderErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_ScheduleBuilderErrorCopyWithImpl<$Res>
    extends _$ScheduleBuilderStateCopyWithImpl<$Res, _$_ScheduleBuilderError>
    implements _$$_ScheduleBuilderErrorCopyWith<$Res> {
  __$$_ScheduleBuilderErrorCopyWithImpl(_$_ScheduleBuilderError _value,
      $Res Function(_$_ScheduleBuilderError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ScheduleBuilderError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleBuilderError implements _ScheduleBuilderError {
  _$_ScheduleBuilderError(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_ScheduleBuilderError.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleBuilderErrorFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScheduleBuilderState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleBuilderError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleBuilderErrorCopyWith<_$_ScheduleBuilderError> get copyWith =>
      __$$_ScheduleBuilderErrorCopyWithImpl<_$_ScheduleBuilderError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notHaveSchedule,
    required TResult Function(ScheduleModel scheduleModel) haveSchedule,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notHaveSchedule,
    TResult? Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notHaveSchedule,
    TResult Function(ScheduleModel scheduleModel)? haveSchedule,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleBuilderNotHaveSchedule value)
        notHaveSchedule,
    required TResult Function(_ScheduleBuilderHaveSchedule value) haveSchedule,
    required TResult Function(_ScheduleBuilderWaiting value) waiting,
    required TResult Function(_ScheduleBuilderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult? Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult? Function(_ScheduleBuilderWaiting value)? waiting,
    TResult? Function(_ScheduleBuilderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleBuilderNotHaveSchedule value)? notHaveSchedule,
    TResult Function(_ScheduleBuilderHaveSchedule value)? haveSchedule,
    TResult Function(_ScheduleBuilderWaiting value)? waiting,
    TResult Function(_ScheduleBuilderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleBuilderErrorToJson(
      this,
    );
  }
}

abstract class _ScheduleBuilderError implements ScheduleBuilderState {
  factory _ScheduleBuilderError(final dynamic error) = _$_ScheduleBuilderError;

  factory _ScheduleBuilderError.fromJson(Map<String, dynamic> json) =
      _$_ScheduleBuilderError.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_ScheduleBuilderErrorCopyWith<_$_ScheduleBuilderError> get copyWith =>
      throw _privateConstructorUsedError;
}
