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
mixin _$ChatState {
  Chat get model => throw _privateConstructorUsedError;
  UiState<int> get commonTemptationsState => throw _privateConstructorUsedError;
  bool get commonTemptationsVisible => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {Chat model,
      UiState<int> commonTemptationsState,
      bool commonTemptationsVisible});

  $ChatCopyWith<$Res> get model;
  $UiStateCopyWith<int, $Res> get commonTemptationsState;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? commonTemptationsState = null,
    Object? commonTemptationsVisible = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Chat,
      commonTemptationsState: null == commonTemptationsState
          ? _value.commonTemptationsState
          : commonTemptationsState // ignore: cast_nullable_to_non_nullable
              as UiState<int>,
      commonTemptationsVisible: null == commonTemptationsVisible
          ? _value.commonTemptationsVisible
          : commonTemptationsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get model {
    return $ChatCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<int, $Res> get commonTemptationsState {
    return $UiStateCopyWith<int, $Res>(_value.commonTemptationsState, (value) {
      return _then(_value.copyWith(commonTemptationsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Chat model,
      UiState<int> commonTemptationsState,
      bool commonTemptationsVisible});

  @override
  $ChatCopyWith<$Res> get model;
  @override
  $UiStateCopyWith<int, $Res> get commonTemptationsState;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? commonTemptationsState = null,
    Object? commonTemptationsVisible = null,
  }) {
    return _then(_$ChatStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Chat,
      commonTemptationsState: null == commonTemptationsState
          ? _value.commonTemptationsState
          : commonTemptationsState // ignore: cast_nullable_to_non_nullable
              as UiState<int>,
      commonTemptationsVisible: null == commonTemptationsVisible
          ? _value.commonTemptationsVisible
          : commonTemptationsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required this.model,
      required this.commonTemptationsState,
      required this.commonTemptationsVisible});

  @override
  final Chat model;
  @override
  final UiState<int> commonTemptationsState;
  @override
  final bool commonTemptationsVisible;

  @override
  String toString() {
    return 'ChatState(model: $model, commonTemptationsState: $commonTemptationsState, commonTemptationsVisible: $commonTemptationsVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.commonTemptationsState, commonTemptationsState) ||
                other.commonTemptationsState == commonTemptationsState) &&
            (identical(
                    other.commonTemptationsVisible, commonTemptationsVisible) ||
                other.commonTemptationsVisible == commonTemptationsVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, model, commonTemptationsState, commonTemptationsVisible);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final Chat model,
      required final UiState<int> commonTemptationsState,
      required final bool commonTemptationsVisible}) = _$ChatStateImpl;

  @override
  Chat get model;
  @override
  UiState<int> get commonTemptationsState;
  @override
  bool get commonTemptationsVisible;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
