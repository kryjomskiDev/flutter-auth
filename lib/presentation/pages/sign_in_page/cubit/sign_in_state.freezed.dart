// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() goToNextPage,
    required TResult Function() showErrorSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateLoaded value) loaded,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateGoToNextPage value) goToNextPage,
    required TResult Function(SignInStateShowErrorSnackBar value)
        showErrorSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$$SignInStateLoadedCopyWith<$Res> {
  factory _$$SignInStateLoadedCopyWith(
          _$SignInStateLoaded value, $Res Function(_$SignInStateLoaded) then) =
      __$$SignInStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {bool canProceed,
      Map<SignInFields, FailedValidation?> failedValidations});
}

/// @nodoc
class __$$SignInStateLoadedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$SignInStateLoadedCopyWith<$Res> {
  __$$SignInStateLoadedCopyWithImpl(
      _$SignInStateLoaded _value, $Res Function(_$SignInStateLoaded) _then)
      : super(_value, (v) => _then(v as _$SignInStateLoaded));

  @override
  _$SignInStateLoaded get _value => super._value as _$SignInStateLoaded;

  @override
  $Res call({
    Object? canProceed = freezed,
    Object? failedValidations = freezed,
  }) {
    return _then(_$SignInStateLoaded(
      canProceed: canProceed == freezed
          ? _value.canProceed
          : canProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      failedValidations: failedValidations == freezed
          ? _value._failedValidations
          : failedValidations // ignore: cast_nullable_to_non_nullable
              as Map<SignInFields, FailedValidation?>,
    ));
  }
}

/// @nodoc

class _$SignInStateLoaded implements SignInStateLoaded {
  const _$SignInStateLoaded(
      {required this.canProceed,
      required final Map<SignInFields, FailedValidation?> failedValidations})
      : _failedValidations = failedValidations;

  @override
  final bool canProceed;
  final Map<SignInFields, FailedValidation?> _failedValidations;
  @override
  Map<SignInFields, FailedValidation?> get failedValidations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_failedValidations);
  }

  @override
  String toString() {
    return 'SignInState.loaded(canProceed: $canProceed, failedValidations: $failedValidations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.canProceed, canProceed) &&
            const DeepCollectionEquality()
                .equals(other._failedValidations, _failedValidations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(canProceed),
      const DeepCollectionEquality().hash(_failedValidations));

  @JsonKey(ignore: true)
  @override
  _$$SignInStateLoadedCopyWith<_$SignInStateLoaded> get copyWith =>
      __$$SignInStateLoadedCopyWithImpl<_$SignInStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() goToNextPage,
    required TResult Function() showErrorSnackBar,
  }) {
    return loaded(canProceed, failedValidations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
  }) {
    return loaded?.call(canProceed, failedValidations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canProceed, failedValidations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateLoaded value) loaded,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateGoToNextPage value) goToNextPage,
    required TResult Function(SignInStateShowErrorSnackBar value)
        showErrorSnackBar,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SignInStateLoaded implements SignInState {
  const factory SignInStateLoaded(
      {required final bool canProceed,
      required final Map<SignInFields, FailedValidation?>
          failedValidations}) = _$SignInStateLoaded;

  bool get canProceed;
  Map<SignInFields, FailedValidation?> get failedValidations;
  @JsonKey(ignore: true)
  _$$SignInStateLoadedCopyWith<_$SignInStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateLoadingCopyWith<$Res> {
  factory _$$SignInStateLoadingCopyWith(_$SignInStateLoading value,
          $Res Function(_$SignInStateLoading) then) =
      __$$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$SignInStateLoadingCopyWith<$Res> {
  __$$SignInStateLoadingCopyWithImpl(
      _$SignInStateLoading _value, $Res Function(_$SignInStateLoading) _then)
      : super(_value, (v) => _then(v as _$SignInStateLoading));

  @override
  _$SignInStateLoading get _value => super._value as _$SignInStateLoading;
}

/// @nodoc

class _$SignInStateLoading implements SignInStateLoading {
  const _$SignInStateLoading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() goToNextPage,
    required TResult Function() showErrorSnackBar,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateLoaded value) loaded,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateGoToNextPage value) goToNextPage,
    required TResult Function(SignInStateShowErrorSnackBar value)
        showErrorSnackBar,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignInStateLoading implements SignInState {
  const factory SignInStateLoading() = _$SignInStateLoading;
}

/// @nodoc
abstract class _$$SignInStateGoToNextPageCopyWith<$Res> {
  factory _$$SignInStateGoToNextPageCopyWith(_$SignInStateGoToNextPage value,
          $Res Function(_$SignInStateGoToNextPage) then) =
      __$$SignInStateGoToNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateGoToNextPageCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$SignInStateGoToNextPageCopyWith<$Res> {
  __$$SignInStateGoToNextPageCopyWithImpl(_$SignInStateGoToNextPage _value,
      $Res Function(_$SignInStateGoToNextPage) _then)
      : super(_value, (v) => _then(v as _$SignInStateGoToNextPage));

  @override
  _$SignInStateGoToNextPage get _value =>
      super._value as _$SignInStateGoToNextPage;
}

/// @nodoc

class _$SignInStateGoToNextPage implements SignInStateGoToNextPage {
  const _$SignInStateGoToNextPage();

  @override
  String toString() {
    return 'SignInState.goToNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateGoToNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() goToNextPage,
    required TResult Function() showErrorSnackBar,
  }) {
    return goToNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
  }) {
    return goToNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (goToNextPage != null) {
      return goToNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateLoaded value) loaded,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateGoToNextPage value) goToNextPage,
    required TResult Function(SignInStateShowErrorSnackBar value)
        showErrorSnackBar,
  }) {
    return goToNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
  }) {
    return goToNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (goToNextPage != null) {
      return goToNextPage(this);
    }
    return orElse();
  }
}

abstract class SignInStateGoToNextPage implements SignInState {
  const factory SignInStateGoToNextPage() = _$SignInStateGoToNextPage;
}

/// @nodoc
abstract class _$$SignInStateShowErrorSnackBarCopyWith<$Res> {
  factory _$$SignInStateShowErrorSnackBarCopyWith(
          _$SignInStateShowErrorSnackBar value,
          $Res Function(_$SignInStateShowErrorSnackBar) then) =
      __$$SignInStateShowErrorSnackBarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateShowErrorSnackBarCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$SignInStateShowErrorSnackBarCopyWith<$Res> {
  __$$SignInStateShowErrorSnackBarCopyWithImpl(
      _$SignInStateShowErrorSnackBar _value,
      $Res Function(_$SignInStateShowErrorSnackBar) _then)
      : super(_value, (v) => _then(v as _$SignInStateShowErrorSnackBar));

  @override
  _$SignInStateShowErrorSnackBar get _value =>
      super._value as _$SignInStateShowErrorSnackBar;
}

/// @nodoc

class _$SignInStateShowErrorSnackBar implements SignInStateShowErrorSnackBar {
  const _$SignInStateShowErrorSnackBar();

  @override
  String toString() {
    return 'SignInState.showErrorSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateShowErrorSnackBar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() goToNextPage,
    required TResult Function() showErrorSnackBar,
  }) {
    return showErrorSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
  }) {
    return showErrorSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignInFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? goToNextPage,
    TResult Function()? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateLoaded value) loaded,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateGoToNextPage value) goToNextPage,
    required TResult Function(SignInStateShowErrorSnackBar value)
        showErrorSnackBar,
  }) {
    return showErrorSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
  }) {
    return showErrorSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateLoaded value)? loaded,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateGoToNextPage value)? goToNextPage,
    TResult Function(SignInStateShowErrorSnackBar value)? showErrorSnackBar,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(this);
    }
    return orElse();
  }
}

abstract class SignInStateShowErrorSnackBar implements SignInState {
  const factory SignInStateShowErrorSnackBar() = _$SignInStateShowErrorSnackBar;
}
