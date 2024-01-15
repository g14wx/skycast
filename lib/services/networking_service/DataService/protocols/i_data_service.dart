// packages
import 'package:dartz/dartz.dart';

// models
import 'package:skycast/services/networking_service/DataService/models/data_service/data_service_response.dart';
import 'package:skycast/services/networking_service/DataService/models/basic_auth_credentials/basic_auth_credentials.dart';

abstract class IDataService {
  Future<Either<Exception, DataServiceResponse>> post(
      {required String url,
      required String path,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isXwwwFormUrlEncoded,
      String? bearerToken,
      BasicAuthCredentials? basicAuthCredentials});

  Future<Either<Exception, DataServiceResponse>> get(
      {required String url, required String path, Map<String, dynamic>? body, String? bearerToken});

  Future<Either<Exception, DataServiceResponse>> patch(
      {required String url,
      required String path,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isXwwwFormUrlEncoded,
      BasicAuthCredentials? basicAuthCredentials});
}
