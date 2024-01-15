import 'dart:convert';
import 'dart:io';
// packages
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
// interfaces
import 'package:skycast/services/networking_service/DataService/protocols/i_data_service.dart';
// models
import 'package:flutter/foundation.dart';
import 'package:skycast/constants/env_variables.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/services/networking_service/DataService/models/data_service/data_service_response.dart';
import 'package:skycast/services/networking_service/DataService/models/basic_auth_credentials/basic_auth_credentials.dart';

@Injectable(as: IDataService)
class DataServiceHttp implements IDataService {
  final isDevelopEnv = dotenv.env[EnvVariables.env]! == Env.local;

  @override
  Future<Either<Exception, DataServiceResponse>> get(
      {required String url, required String path, Map<String, dynamic>? body, String? bearerToken}) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    // bearer token
    if (bearerToken != null) {
      headers['Authorization'] = 'Bearer $bearerToken';
    }

    try {
      final parsedBody = body?.map((key, value) {
        try {
          // check if the value is a string json
          json.decode(value) as Map<String, dynamic>;
          return MapEntry(key, jsonEncode(value));
        } catch (e) {
          if (value is Map) {
            // then the object is a map object
            return MapEntry(key, jsonEncode(value));
          } else {
            return MapEntry(key, value);
          }
        }
      });
      var response = await http.get(isDevelopEnv ? Uri.http(url, path, parsedBody) : Uri.https(url, path, parsedBody),
          headers: headers);

      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final dataResponse = DataServiceResponse(statusCode: response.statusCode, data: decodedResponse);
      return Right(dataResponse);
    } on SocketException {
      return Left(Exception("No internet connection"));
    } on HttpException {
      return Left(Exception("Bad api request"));
    } /*on FormatException {
      return Left(Exception("Bad Response format"));
    }*/
    catch (e) {
      return Left(Exception("Error parsing data"));
    }
  }

  @override
  Future<Either<Exception, DataServiceResponse>> post(
      {required String url,
      required String path,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isXwwwFormUrlEncoded,
      BasicAuthCredentials? basicAuthCredentials,
      String? bearerToken}) async {
    var headers = {
      'Content-Type': (isXwwwFormUrlEncoded != null && isXwwwFormUrlEncoded)
          ? 'application/x-www-form-urlencoded'
          : 'application/json',
    };

    // basic auth (legacy auth)
    if (basicAuthCredentials != null) {
      final basicAuthBytes = utf8.encode('${basicAuthCredentials.username}:${basicAuthCredentials.password}');
      final basicAuth = 'Basic ${base64Encode(basicAuthBytes)}';
      headers['authorization'] = basicAuth;
    }

    // bearer token
    if (bearerToken != null) {
      headers['Authorization'] = 'Bearer $bearerToken';
    }

    Encoding? encoding;
    dynamic parseBody = json.encode(body);
    if (isXwwwFormUrlEncoded != null && isXwwwFormUrlEncoded) {
      encoding = Encoding.getByName('utf-8');
      if (body != null) {
        final formBody = body.entries.map((e) => '${e.key}=${Uri.encodeQueryComponent(e.value.toString())}').join(';');
        parseBody = utf8.encode(formBody);
      }
    }

    try {
      final uri = isDevelopEnv ? Uri.http(url, path, queryParameters) : Uri.https(url, path, queryParameters);
      var response = await http.post(uri, body: parseBody, headers: headers, encoding: encoding);

      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final dataResponse = DataServiceResponse(statusCode: response.statusCode, data: decodedResponse);
      return Right(dataResponse);
    } on SocketException {
      return Left(Exception("No internet connection"));
    } on HttpException {
      return Left(Exception("Bad api request"));
    } on FormatException {
      return Left(Exception("Format exception"));
    } catch (e) {
      debugPrint(e.toString());
      return Left(Exception("Bad Response format"));
    }
  }

  @override
  Future<Either<Exception, DataServiceResponse>> patch(
      {required String url,
      required String path,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isXwwwFormUrlEncoded,
      BasicAuthCredentials? basicAuthCredentials,
      String? bearerToken}) async {
    var headers = {
      'Content-Type': (isXwwwFormUrlEncoded != null && isXwwwFormUrlEncoded)
          ? 'application/x-www-form-urlencoded'
          : 'application/json',
    };

    // basic auth (legacy auth)
    if (basicAuthCredentials != null) {
      final basicAuthBytes = utf8.encode('${basicAuthCredentials.username}:${basicAuthCredentials.password}');
      final basicAuth = 'Basic ${base64Encode(basicAuthBytes)}';
      headers['authorization'] = basicAuth;
    }

    // bearer token
    if (bearerToken != null) {
      headers['Authorization'] = 'Bearer $bearerToken';
    }

    Encoding? encoding;
    dynamic parseBody = json.encode(body);
    if (isXwwwFormUrlEncoded != null && isXwwwFormUrlEncoded) {
      encoding = Encoding.getByName('utf-8');
      if (body != null) {
        final formBody = body.entries.map((e) => '${e.key}=${Uri.encodeQueryComponent(e.value.toString())}').join(';');
        parseBody = utf8.encode(formBody);
      }
    }

    try {
      final uri = isDevelopEnv ? Uri.http(url, path, queryParameters) : Uri.https(url, path, queryParameters);
      var response = await http.patch(uri, body: parseBody, headers: headers, encoding: encoding);

      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final dataResponse = DataServiceResponse(statusCode: response.statusCode, data: decodedResponse);
      return Right(dataResponse);
    } on SocketException {
      return Left(Exception("No internet connection"));
    } on HttpException {
      return Left(Exception("Bad api request"));
    } on FormatException {
      return Left(Exception("Format Exception"));
    } catch (e) {
      debugPrint(e.toString());
      return Left(Exception(e.toString()));
    }
  }
}
