// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int key) incognitoShown,
    required TResult Function(Chat model, int key) navigateToChat,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int key)? incognitoShown,
    TResult? Function(Chat model, int key)? navigateToChat,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int key)? incognitoShown,
    TResult Function(Chat model, int key)? navigateToChat,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncognitoShown value) incognitoShown,
    required TResult Function(NavigateToChat value) navigateToChat,
    required TResult Function(None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncognitoShown value)? incognitoShown,
    TResult? Function(NavigateToChat value)? navigateToChat,
    TResult? Function(None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncognitoShown value)? incognitoShown,
    TResult Function(NavigateToChat value)? navigateToChat,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEffectCopyWith<$Res> {
  factory $ChatsEffectCopyWith(
          ChatsEffect value, $Res Function(ChatsEffect) then) =
      _$ChatsEffectCopyWithImpl<$Res, ChatsEffect>;
}

/// @nodoc
class _$ChatsEffectCopyWithImpl<$Res, $Val extends ChatsEffect>
    implements $ChatsEffectCopyWith<$Res> {
  _$ChatsEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IncognitoShownImplCopyWith<$Res> {
  factory _$$IncognitoShownImplCopyWith(_$IncognitoShownImpl value,
          $Res Function(_$IncognitoShownImpl) then) =
      __$$IncognitoShownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key});
}

/// @nodoc
class __$$IncognitoShownImplCopyWithImpl<$Res>
    extends _$ChatsEffectCopyWithImpl<$Res, _$IncognitoShownImpl>
    implements _$$IncognitoShownImplCopyWith<$Res> {
  __$$IncognitoShownImplCopyWithImpl(
      _$IncognitoShownImpl _value, $Res Function(_$IncognitoShownImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$IncognitoShownImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncognitoShownImpl implements IncognitoShown {
  const _$IncognitoShownImpl({required this.key});

  @override
  final int key;

  @override
  String toString() {
    return 'ChatsEffect.incognitoShown(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncognitoShownImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncognitoShownImplCopyWith<_$IncognitoShownImpl> get copyWith =>
      __$$IncognitoShownImplCopyWithImpl<_$IncognitoShownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int key) incognitoShown,
    required TResult Function(Chat model, int key) navigateToChat,
    required TResult Function() none,
  }) {
    return incognitoShown(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int key)? incognitoShown,
    TResult? Function(Chat model, int key)? navigateToChat,
    TResult? Function()? none,
  }) {
    return incognitoShown?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int key)? incognitoShown,
    TResult Function(Chat model, int key)? navigateToChat,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (incognitoShown != null) {
      return incognitoShown(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncognitoShown value) incognitoShown,
    required TResult Function(NavigateToChat value) navigateToChat,
    required TResult Function(None value) none,
  }) {
    return incognitoShown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncognitoShown value)? incognitoShown,
    TResult? Function(NavigateToChat value)? navigateToChat,
    TResult? Function(None value)? none,
  }) {
    return incognitoShown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncognitoShown value)? incognitoShown,
    TResult Function(NavigateToChat value)? navigateToChat,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) {
    if (incognitoShown != null) {
      return incognitoShown(this);
    }
    return orElse();
  }
}

abstract class IncognitoShown implements ChatsEffect {
  const factory IncognitoShown({required final int key}) = _$IncognitoShownImpl;

  int get key;

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncognitoShownImplCopyWith<_$IncognitoShownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToChatImplCopyWith<$Res> {
  factory _$$NavigateToChatImplCopyWith(_$NavigateToChatImpl value,
          $Res Function(_$NavigateToChatImpl) then) =
      __$$NavigateToChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat model, int key});

  $ChatCopyWith<$Res> get model;
}

/// @nodoc
class __$$NavigateToChatImplCopyWithImpl<$Res>
    extends _$ChatsEffectCopyWithImpl<$Res, _$NavigateToChatImpl>
    implements _$$NavigateToChatImplCopyWith<$Res> {
  __$$NavigateToChatImplCopyWithImpl(
      _$NavigateToChatImpl _value, $Res Function(_$NavigateToChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? key = null,
  }) {
    return _then(_$NavigateToChatImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Chat,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get model {
    return $ChatCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$NavigateToChatImpl implements NavigateToChat {
  const _$NavigateToChatImpl({required this.model, required this.key});

  @override
  final Chat model;
  @override
  final int key;

  @override
  String toString() {
    return 'ChatsEffect.navigateToChat(model: $model, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToChatImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, key);

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToChatImplCopyWith<_$NavigateToChatImpl> get copyWith =>
      __$$NavigateToChatImplCopyWithImpl<_$NavigateToChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int key) incognitoShown,
    required TResult Function(Chat model, int key) navigateToChat,
    required TResult Function() none,
  }) {
    return navigateToChat(model, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int key)? incognitoShown,
    TResult? Function(Chat model, int key)? navigateToChat,
    TResult? Function()? none,
  }) {
    return navigateToChat?.call(model, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int key)? incognitoShown,
    TResult Function(Chat model, int key)? navigateToChat,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (navigateToChat != null) {
      return navigateToChat(model, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncognitoShown value) incognitoShown,
    required TResult Function(NavigateToChat value) navigateToChat,
    required TResult Function(None value) none,
  }) {
    return navigateToChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncognitoShown value)? incognitoShown,
    TResult? Function(NavigateToChat value)? navigateToChat,
    TResult? Function(None value)? none,
  }) {
    return navigateToChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncognitoShown value)? incognitoShown,
    TResult Function(NavigateToChat value)? navigateToChat,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) {
    if (navigateToChat != null) {
      return navigateToChat(this);
    }
    return orElse();
  }
}

abstract class NavigateToChat implements ChatsEffect {
  const factory NavigateToChat(
      {required final Chat model,
      required final int key}) = _$NavigateToChatImpl;

  Chat get model;
  int get key;

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToChatImplCopyWith<_$NavigateToChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$ChatsEffectCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'ChatsEffect.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int key) incognitoShown,
    required TResult Function(Chat model, int key) navigateToChat,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int key)? incognitoShown,
    TResult? Function(Chat model, int key)? navigateToChat,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int key)? incognitoShown,
    TResult Function(Chat model, int key)? navigateToChat,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncognitoShown value) incognitoShown,
    required TResult Function(NavigateToChat value) navigateToChat,
    required TResult Function(None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncognitoShown value)? incognitoShown,
    TResult? Function(NavigateToChat value)? navigateToChat,
    TResult? Function(None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncognitoShown value)? incognitoShown,
    TResult Function(NavigateToChat value)? navigateToChat,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements ChatsEffect {
  const factory None() = _$NoneImpl;
}
