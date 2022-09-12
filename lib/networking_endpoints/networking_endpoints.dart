class NetworkingEndpoints {
  static const signUpWithEmailAndPassword = 'accounts:signUp';
  static const signInWithEmailAndPassword = 'accounts:signInWithPassword';
  static const setUserName = 'accounts:update';
  static const getUserData = 'accounts:lookup';

  //refresh token

  static const refreshToken = 'v1/token';

  NetworkingEndpoints._();
}
