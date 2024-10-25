// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsState {
  UiState<int> get likesCountState => throw _privateConstructorUsedError;
  List<Chat> get chats => throw _privateConstructorUsedError;
  ChatsEffect? get effect => throw _privateConstructorUsedError;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
  @useResult
  $Res call(
      {UiState<int> likesCountState, List<Chat> chats, ChatsEffect? effect});

  $UiStateCopyWith<int, $Res> get likesCountState;
  $ChatsEffectCopyWith<$Res>? get effect;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCountState = null,
    Object? chats = null,
    Object? effect = freezed,
  }) {
    return _then(_value.copyWith(
      likesCountState: null == likesCountState
          ? _value.likesCountState
          : likesCountState // ignore: cast_nullable_to_non_nullable
              as UiState<int>,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as ChatsEffect?,
    ) as $Val);
  }

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<int, $Res> get likesCountState {
    return $UiStateCopyWith<int, $Res>(_value.likesCountState, (value) {
      return _then(_value.copyWith(likesCountState: value) as $Val);
    });
  }

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatsEffectCopyWith<$Res>? get effect {
    if (_value.effect == null) {
      return null;
    }

    return $ChatsEffectCopyWith<$Res>(_value.effect!, (value) {
      return _then(_value.copyWith(effect: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatsStateImplCopyWith<$Res>
    implements $ChatsStateCopyWith<$Res> {
  factory _$$ChatsStateImplCopyWith(
          _$ChatsStateImpl value, $Res Function(_$ChatsStateImpl) then) =
      __$$ChatsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UiState<int> likesCountState, List<Chat> chats, ChatsEffect? effect});

  @override
  $UiStateCopyWith<int, $Res> get likesCountState;
  @override
  $ChatsEffectCopyWith<$Res>? get effect;
}

/// @nodoc
class __$$ChatsStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsStateImpl>
    implements _$$ChatsStateImplCopyWith<$Res> {
  __$$ChatsStateImplCopyWithImpl(
      _$ChatsStateImpl _value, $Res Function(_$ChatsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likesCountState = null,
    Object? chats = null,
    Object? effect = freezed,
  }) {
    return _then(_$ChatsStateImpl(
      likesCountState: null == likesCountState
          ? _value.likesCountState
          : likesCountState // ignore: cast_nullable_to_non_nullable
              as UiState<int>,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as ChatsEffect?,
    ));
  }
}

/// @nodoc

class _$ChatsStateImpl implements _ChatsState {
  const _$ChatsStateImpl(
      {required this.likesCountState,
      required final List<Chat> chats,
      this.effect})
      : _chats = chats;

  @override
  final UiState<int> likesCountState;
  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final ChatsEffect? effect;

  @override
  String toString() {
    return 'ChatsState(likesCountState: $likesCountState, chats: $chats, effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsStateImpl &&
            (identical(other.likesCountState, likesCountState) ||
                other.likesCountState == likesCountState) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likesCountState,
      const DeepCollectionEquality().hash(_chats), effect);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      __$$ChatsStateImplCopyWithImpl<_$ChatsStateImpl>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  const factory _ChatsState(
      {required final UiState<int> likesCountState,
      required final List<Chat> chats,
      final ChatsEffect? effect}) = _$ChatsStateImpl;

  @override
  UiState<int> get likesCountState;
  @override
  List<Chat> get chats;
  @override
  ChatsEffect? get effect;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
