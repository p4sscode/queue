// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestorePlayerState _$FirestorePlayerStateFromJson(Map<String, dynamic> json) {
  return _PlayerState.fromJson(json);
}

/// @nodoc
mixin _$FirestorePlayerState {
  bool get isPaused => throw _privateConstructorUsedError;

  String get uri => throw _privateConstructorUsedError;

  int get duration => throw _privateConstructorUsedError;

  int get playbackPosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestorePlayerStateCopyWith<FirestorePlayerState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestorePlayerStateCopyWith<$Res> {
  factory $FirestorePlayerStateCopyWith(FirestorePlayerState value, $Res Function(FirestorePlayerState) then) =
      _$FirestorePlayerStateCopyWithImpl<$Res, FirestorePlayerState>;

  @useResult
  $Res call({bool isPaused, String uri, int duration, int playbackPosition});
}

/// @nodoc
class _$FirestorePlayerStateCopyWithImpl<$Res, $Val extends FirestorePlayerState>
    implements $FirestorePlayerStateCopyWith<$Res> {
  _$FirestorePlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaused = null,
    Object? uri = null,
    Object? duration = null,
    Object? playbackPosition = null,
  }) {
    return _then(_value.copyWith(
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playbackPosition: null == playbackPosition
          ? _value.playbackPosition
          : playbackPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerStateCopyWith<$Res> implements $FirestorePlayerStateCopyWith<$Res> {
  factory _$$_PlayerStateCopyWith(_$_PlayerState value, $Res Function(_$_PlayerState) then) =
      __$$_PlayerStateCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({bool isPaused, String uri, int duration, int playbackPosition});
}

/// @nodoc
class __$$_PlayerStateCopyWithImpl<$Res> extends _$FirestorePlayerStateCopyWithImpl<$Res, _$_PlayerState>
    implements _$$_PlayerStateCopyWith<$Res> {
  __$$_PlayerStateCopyWithImpl(_$_PlayerState _value, $Res Function(_$_PlayerState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaused = null,
    Object? uri = null,
    Object? duration = null,
    Object? playbackPosition = null,
  }) {
    return _then(_$_PlayerState(
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playbackPosition: null == playbackPosition
          ? _value.playbackPosition
          : playbackPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_PlayerState implements _PlayerState {
  const _$_PlayerState({required this.isPaused, required this.uri, required this.duration, required this.playbackPosition});

  factory _$_PlayerState.fromJson(Map<String, dynamic> json) => _$$_PlayerStateFromJson(json);

  @override
  final bool isPaused;
  @override
  final String uri;
  @override
  final int duration;
  @override
  final int playbackPosition;

  @override
  String toString() {
    return 'FirestorePlayerState(isPaused: $isPaused, uri: $uri, duration: $duration, playbackPosition: $playbackPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerState &&
            (identical(other.isPaused, isPaused) || other.isPaused == isPaused) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.playbackPosition, playbackPosition) || other.playbackPosition == playbackPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPaused, uri, duration, playbackPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith => __$$_PlayerStateCopyWithImpl<_$_PlayerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerStateToJson(
      this,
    );
  }
}

abstract class _PlayerState implements FirestorePlayerState {
  const factory _PlayerState(
      {required final bool isPaused,
      required final String uri,
      required final int duration,
      required final int playbackPosition}) = _$_PlayerState;

  factory _PlayerState.fromJson(Map<String, dynamic> json) = _$_PlayerState.fromJson;

  @override
  bool get isPaused;

  @override
  String get uri;

  @override
  int get duration;

  @override
  int get playbackPosition;

  @override
  @JsonKey(ignore: true)
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith => throw _privateConstructorUsedError;
}
