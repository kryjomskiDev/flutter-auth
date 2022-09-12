// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_url_provider.dart' as _i3;
import '../data/auth/data_source/auth_api_data_source.dart' as _i12;
import '../data/auth/data_source/refresh_token_api_data_source.dart' as _i18;
import '../data/auth/mapper/auth_user_dto_to_auth_user_mapper.dart' as _i4;
import '../data/auth/mapper/user_data_list_dto_to_user_data_mapper.dart'
    as _i10;
import '../data/auth/service/auth_service_impl.dart' as _i14;
import '../data/auth/service/refresh_token_service_impl.dart' as _i20;
import '../data/auth/store/token_box.dart' as _i7;
import '../data/auth/store/token_store_impl.dart' as _i9;
import '../domain/auth/service/auth_service.dart' as _i13;
import '../domain/auth/service/refresh_token_service.dart' as _i19;
import '../domain/auth/store/token_store.dart' as _i8;
import '../domain/auth/usecase/check_if_exists_tokens_usecase.dart' as _i15;
import '../domain/auth/usecase/get_user_data_usecase.dart' as _i16;
import '../domain/auth/usecase/logout_usecase.dart' as _i17;
import '../domain/auth/usecase/sign_in_with_email_and_password_usecase.dart'
    as _i21;
import '../domain/auth/usecase/signup_with_email_and_password_usecase.dart'
    as _i22;
import '../domain/auth/usecase/subscribe_to_session_expired_stream_usecase.dart'
    as _i24;
import '../domain/text_field_validator/usecase/validate_text_field_use_case.dart'
    as _i11;
import '../presentation/pages/home/cubit/home_cubit.dart' as _i25;
import '../presentation/pages/sign_in_page/cubit/sign_in_cubit.dart' as _i26;
import '../presentation/pages/sign_up_page/cubit/sign_up_cubit.dart' as _i27;
import '../presentation/pages/splash/cubit/splash_cubit.dart' as _i23;
import 'dio/dio_configuration.dart' as _i28;
import 'dio/dio_injectable.dart' as _i29;
import 'refresh_token_dio/refresh_token_dio.dart' as _i6;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioConfigurationModule = _$DioConfigurationModule();
  final dioModule = _$DioModule();
  gh.singleton<_i3.ApiUrlProvider>(_i3.ApiUrlProvider());
  gh.factory<_i4.AuthUserDtoToAuthUserMapper>(
      () => _i4.AuthUserDtoToAuthUserMapper());
  gh.singleton<_i5.BaseOptions>(
      dioConfigurationModule.createDioOptions(get<_i3.ApiUrlProvider>()));
  gh.lazySingleton<_i5.Dio>(() => dioModule.dio(get<_i5.BaseOptions>()),
      registerFor: {_dev, _prod});
  gh.singleton<_i5.Dio>(dioModule.testDio(), registerFor: {_test});
  gh.lazySingleton<_i6.RefreshTokenDio>(
      () => _i6.RefreshTokenDio(get<_i5.BaseOptions>()));
  gh.lazySingleton<_i7.TokenBox>(() => _i7.TokenBoxImpl());
  gh.lazySingleton<_i8.TokenStore>(
      () => _i9.TokenStoreImpl(get<_i7.TokenBox>()));
  gh.factory<_i10.UserDataListDtoToUserDataMapper>(
      () => _i10.UserDataListDtoToUserDataMapper());
  gh.factory<_i11.ValidateTextFieldUseCase>(
      () => _i11.ValidateTextFieldUseCase());
  gh.factory<_i12.AuthApiDataSource>(
      () => _i12.AuthApiDataSource(get<_i5.Dio>()));
  gh.lazySingleton<_i13.AuthService>(() => _i14.AuthServiceImpl(
      get<_i12.AuthApiDataSource>(),
      get<_i4.AuthUserDtoToAuthUserMapper>(),
      get<_i8.TokenStore>(),
      get<_i10.UserDataListDtoToUserDataMapper>()));
  gh.factory<_i15.CheckIfTokensExistsUseCase>(
      () => _i15.CheckIfTokensExistsUseCase(get<_i8.TokenStore>()));
  gh.factory<_i16.GetUserDataUseCase>(
      () => _i16.GetUserDataUseCase(get<_i13.AuthService>()));
  gh.factory<_i17.LogoutUseCase>(
      () => _i17.LogoutUseCase(get<_i13.AuthService>()));
  gh.factory<_i18.RefreshTokenApiDataSource>(
      () => _i18.RefreshTokenApiDataSource(get<_i6.RefreshTokenDio>()));
  gh.lazySingleton<_i19.RefreshTokenService>(() => _i20.RefreshTokenSerivceImpl(
      get<_i18.RefreshTokenApiDataSource>(),
      get<_i3.ApiUrlProvider>(),
      get<_i8.TokenStore>()));
  gh.factory<_i21.SignInWithEmailAndPasswordUseCase>(
      () => _i21.SignInWithEmailAndPasswordUseCase(get<_i13.AuthService>()));
  gh.factory<_i22.SignUpWithEmailAndPasswordUseCase>(
      () => _i22.SignUpWithEmailAndPasswordUseCase(get<_i13.AuthService>()));
  gh.factory<_i23.SplashCubit>(
      () => _i23.SplashCubit(get<_i15.CheckIfTokensExistsUseCase>()));
  gh.factory<_i24.SubscribeToSessionExpiredUseCase>(
      () => _i24.SubscribeToSessionExpiredUseCase(get<_i13.AuthService>()));
  gh.factory<_i25.HomeCubit>(() => _i25.HomeCubit(
      get<_i17.LogoutUseCase>(),
      get<_i16.GetUserDataUseCase>(),
      get<_i24.SubscribeToSessionExpiredUseCase>()));
  gh.factory<_i26.SignInCubit>(() => _i26.SignInCubit(
      get<_i21.SignInWithEmailAndPasswordUseCase>(),
      get<_i11.ValidateTextFieldUseCase>()));
  gh.factory<_i27.SignUpCubit>(() => _i27.SignUpCubit(
      get<_i22.SignUpWithEmailAndPasswordUseCase>(),
      get<_i11.ValidateTextFieldUseCase>()));
  return get;
}

class _$DioConfigurationModule extends _i28.DioConfigurationModule {}

class _$DioModule extends _i29.DioModule {}
