// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() showErrorSnackBar,
    required TResult Function() goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateLoaded value) loaded,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(SignUpStateGoToNextPage value) goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class _$$SignUpStateLoadedCopyWith<$Res> {
  factory _$$SignUpStateLoadedCopyWith(
          _$SignUpStateLoaded value, $Res Function(_$SignUpStateLoaded) then) =
      __$$SignUpStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {bool canProceed,
      Map<SignUpFields, FailedValidation?> failedValidations});
}

/// @nodoc
class __$$SignUpStateLoadedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$SignUpStateLoadedCopyWith<$Res> {
  __$$SignUpStateLoadedCopyWithImpl(
      _$SignUpStateLoaded _value, $Res Function(_$SignUpStateLoaded) _then)
      : super(_value, (v) => _then(v as _$SignUpStateLoaded));

  @override
  _$SignUpStateLoaded get _value => super._value as _$SignUpStateLoaded;

  @override
  $Res call({
    Object? canProceed = freezed,
    Object? failedValidations = freezed,
  }) {
    return _then(_$SignUpStateLoaded(
      canProceed: canProceed == freezed
          ? _value.canProceed
          : canProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      failedValidations: failedValidations == freezed
          ? _value._failedValidations
          : failedValidations // ignore: cast_nullable_to_non_nullable
              as Map<SignUpFields, FailedValidation?>,
    ));
  }
}

/// @nodoc

class _$SignUpStateLoaded implements SignUpStateLoaded {
  const _$SignUpStateLoaded(
      {required this.canProceed,
      required final Map<SignUpFields, FailedValidation?> failedValidations})
      : _failedValidations = failedValidations;

  @override
  final bool canProceed;
  final Map<SignUpFields, FailedValidation?> _failedValidations;
  @override
  Map<SignUpFields, FailedValidation?> get failedValidations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_failedValidations);
  }

  @override
  String toString() {
    return 'SignUpState.loaded(canProceed: $canProceed, failedValidations: $failedValidations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateLoaded &&
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
  _$$SignUpStateLoadedCopyWith<_$SignUpStateLoaded> get copyWith =>
      __$$SignUpStateLoadedCopyWithImpl<_$SignUpStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() showErrorSnackBar,
    required TResult Function() goToNextPage,
  }) {
    return loaded(canProceed, failedValidations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
  }) {
    return loaded?.call(canProceed, failedValidations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
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
    required TResult Function(SignUpStateLoaded value) loaded,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(SignUpStateGoToNextPage value) goToNextPage,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoaded implements SignUpState {
  const factory SignUpStateLoaded(
      {required final bool canProceed,
      required final Map<SignUpFields, FailedValidation?>
          failedValidations}) = _$SignUpStateLoaded;

  bool get canProceed;
  Map<SignUpFields, FailedValidation?> get failedValidations;
  @JsonKey(ignore: true)
  _$$SignUpStateLoadedCopyWith<_$SignUpStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateLoadingCopyWith<$Res> {
  factory _$$SignUpStateLoadingCopyWith(_$SignUpStateLoading value,
          $Res Function(_$SignUpStateLoading) then) =
      __$$SignUpStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateLoadingCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$SignUpStateLoadingCopyWith<$Res> {
  __$$SignUpStateLoadingCopyWithImpl(
      _$SignUpStateLoading _value, $Res Function(_$SignUpStateLoading) _then)
      : super(_value, (v) => _then(v as _$SignUpStateLoading));

  @override
  _$SignUpStateLoading get _value => super._value as _$SignUpStateLoading;
}

/// @nodoc

class _$SignUpStateLoading implements SignUpStateLoading {
  const _$SignUpStateLoading();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() showErrorSnackBar,
    required TResult Function() goToNextPage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
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
    required TResult Function(SignUpStateLoaded value) loaded,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(SignUpStateGoToNextPage value) goToNextPage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignUpState {
  const factory SignUpStateLoading() = _$SignUpStateLoading;
}

/// @nodoc
abstract class _$$SignUpStateShowErrorSnackBarCopyWith<$Res> {
  factory _$$SignUpStateShowErrorSnackBarCopyWith(
          _$SignUpStateShowErrorSnackBar value,
          $Res Function(_$SignUpStateShowErrorSnackBar) then) =
      __$$SignUpStateShowErrorSnackBarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateShowErrorSnackBarCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$SignUpStateShowErrorSnackBarCopyWith<$Res> {
  __$$SignUpStateShowErrorSnackBarCopyWithImpl(
      _$SignUpStateShowErrorSnackBar _value,
      $Res Function(_$SignUpStateShowErrorSnackBar) _then)
      : super(_value, (v) => _then(v as _$SignUpStateShowErrorSnackBar));

  @override
  _$SignUpStateShowErrorSnackBar get _value =>
      super._value as _$SignUpStateShowErrorSnackBar;
}

/// @nodoc

class _$SignUpStateShowErrorSnackBar implements SignUpStateShowErrorSnackBar {
  const _$SignUpStateShowErrorSnackBar();

  @override
  String toString() {
    return 'SignUpState.showErrorSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateShowErrorSnackBar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() showErrorSnackBar,
    required TResult Function() goToNextPage,
  }) {
    return showErrorSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
  }) {
    return showErrorSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
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
    required TResult Function(SignUpStateLoaded value) loaded,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(SignUpStateGoToNextPage value) goToNextPage,
  }) {
    return showErrorSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
  }) {
    return showErrorSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(this);
    }
    return orElse();
  }
}

abstract class SignUpStateShowErrorSnackBar implements SignUpState {
  const factory SignUpStateShowErrorSnackBar() = _$SignUpStateShowErrorSnackBar;
}

/// @nodoc
abstract class _$$SignUpStateGoToNextPageCopyWith<$Res> {
  factory _$$SignUpStateGoToNextPageCopyWith(_$SignUpStateGoToNextPage value,
          $Res Function(_$SignUpStateGoToNextPage) then) =
      __$$SignUpStateGoToNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateGoToNextPageCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$SignUpStateGoToNextPageCopyWith<$Res> {
  __$$SignUpStateGoToNextPageCopyWithImpl(_$SignUpStateGoToNextPage _value,
      $Res Function(_$SignUpStateGoToNextPage) _then)
      : super(_value, (v) => _then(v as _$SignUpStateGoToNextPage));

  @override
  _$SignUpStateGoToNextPage get _value =>
      super._value as _$SignUpStateGoToNextPage;
}

/// @nodoc

class _$SignUpStateGoToNextPage implements SignUpStateGoToNextPage {
  const _$SignUpStateGoToNextPage();

  @override
  String toString() {
    return 'SignUpState.goToNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateGoToNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)
        loaded,
    required TResult Function() loading,
    required TResult Function() showErrorSnackBar,
    required TResult Function() goToNextPage,
  }) {
    return goToNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
  }) {
    return goToNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canProceed,
            Map<SignUpFields, FailedValidation?> failedValidations)?
        loaded,
    TResult Function()? loading,
    TResult Function()? showErrorSnackBar,
    TResult Function()? goToNextPage,
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
    required TResult Function(SignUpStateLoaded value) loaded,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(SignUpStateGoToNextPage value) goToNextPage,
  }) {
    return goToNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
  }) {
    return goToNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateLoaded value)? loaded,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(SignUpStateGoToNextPage value)? goToNextPage,
    required TResult orElse(),
  }) {
    if (goToNextPage != null) {
      return goToNextPage(this);
    }
    return orElse();
  }
}

abstract class SignUpStateGoToNextPage implements SignUpState {
  const factory SignUpStateGoToNextPage() = _$SignUpStateGoToNextPage;
}
