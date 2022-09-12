class NetworkingEndpoints {
  static const signUpWithEmailAndPassword = 'accounts:signUp?key={key}';
  static const signInWithEmailAndPassword = 'accounts:signInWithPassword?key={key}';
  static const setUserName = 'accounts:update?key={key}';
  static const getUserData = 'accounts:lookup?key={key}';

  //refresh token

  static const refreshToken = 'v1/token?key={key}';

  NetworkingEndpoints._();
}
