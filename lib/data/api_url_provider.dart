import 'package:injectable/injectable.dart';

@singleton
class ApiUrlProvider {
  String getApiUrl() => 'https://identitytoolkit.googleapis.com/v1/';
  String apiKey() => 'AIzaSyAjHZHcwJ8B6b7Q_gyW4tmJAWk0Yeo0wg8';
  String getRefreshTokenUrl() => 'https://securetoken.googleapis.com/';
}
