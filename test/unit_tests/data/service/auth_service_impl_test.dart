import 'package:flutter_auth/data/api_url_provider.dart';
import 'package:flutter_auth/data/auth/data_source/auth_api_data_source.dart';
import 'package:flutter_auth/data/auth/mapper/auth_user_dto_to_auth_user_mapper.dart';
import 'package:flutter_auth/data/auth/mapper/user_data_list_dto_to_user_data_mapper.dart';
import 'package:flutter_auth/data/auth/service/auth_service_impl.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'auth_service_impl_test.mocks.dart';

@GenerateMocks([
  AuthApiDataSource,
  ApiUrlProvider,
  AuthUserDtoToAuthUserMapper,
  TokenStore,
  UserDataListDtoToUserDataMapper,
])
void main() {
  late AuthApiDataSource authApiDataSource;
  late ApiUrlProvider apiUrlProvider;
  late AuthUserDtoToAuthUserMapper authUserDtoToAuthUserMapper;
  late TokenStore tokenStore;
  late UserDataListDtoToUserDataMapper userDataListDtoToUserDataMapper;
  late AuthServiceImpl authService;

  setUp(() {
    authApiDataSource = MockAuthApiDataSource();
    apiUrlProvider = MockApiUrlProvider();
    authUserDtoToAuthUserMapper = MockAuthUserDtoToAuthUserMapper();
    tokenStore = MockTokenStore();
    userDataListDtoToUserDataMapper = MockUserDataListDtoToUserDataMapper();

    authService = AuthServiceImpl(
      authApiDataSource,
      apiUrlProvider,
      authUserDtoToAuthUserMapper,
      tokenStore,
      userDataListDtoToUserDataMapper,
    );
  });
}
