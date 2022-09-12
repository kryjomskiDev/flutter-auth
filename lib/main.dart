import 'package:flutter_auth/mobile_app.dart';
import 'package:injectable/injectable.dart';

const String _environmentDefineKey = 'ENVIRONMENT';
const String _prodEnvironmentName = 'production';

void main() => runMobileApp(getEnvironment());

String getEnvironment() {
  const baseEnvironment = String.fromEnvironment(_environmentDefineKey, defaultValue: Environment.prod);

  return baseEnvironment == _prodEnvironmentName ? Environment.prod : baseEnvironment;
}
