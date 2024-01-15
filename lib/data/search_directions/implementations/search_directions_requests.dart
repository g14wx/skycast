import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env_variables.dart';
import 'package:skycast/data/search_directions/protocols/i_search_directions_requests.dart';
import 'package:skycast/networking/protocols/i_api_paths.dart';
import 'package:skycast/services/networking_service/DataService/models/data_service/data_service_response.dart';
import 'package:skycast/services/networking_service/DataService/protocols/i_data_service.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: ISearchDirectionsRequests)
class SearchDirectionsRequests implements ISearchDirectionsRequests {
  late final IDataService _dataServiceHttp;
  late final IApiPaths api;
  late final Uuid _uuid;
  late final String _sessionToken;

  late final String _googleApiKey;

  SearchDirectionsRequests(this._dataServiceHttp, this.api) {
    _setSessionToken();
    _setGoogleApiKey();
  }

  @override
  Future<Either<Exception, Either<Map<String, dynamic>, List<Map<String, dynamic>>>>> getDirectionSuggestionsFromQuery(
      {required String query}) async {
    final url = api.baseUrlToGetMapDirections;
    final path = api.pathToGetSuggestionsForDirections;

    final body = {"input": query, "key": _googleApiKey, "sessiontoken": _sessionToken};

    final result = await _dataServiceHttp.get(url: url, path: path, body: body);

    final rawResult = result.fold((exception) => exception, (data) => data);

    // if it is left then just send back the error that data service catch
    if (result.isLeft()) {
      return Left(Exception(rawResult));
    }

    final response = rawResult as DataServiceResponse;
    late final Map<String, dynamic> castedResponse;
    late final List<Map<String, dynamic>> listCastedResponse;

    try {
      if (response.data["predictions"] is Iterable) {
        final dynamicList = response.data["predictions"] as List<dynamic>;
        listCastedResponse = dynamicList.map((rawOrder) => rawOrder as Map<String, dynamic>).toList();
      } else {
        castedResponse = response.data as Map<String, dynamic>;
      }
    } catch (e) {
      castedResponse = response.data as Map<String, dynamic>;
    }
    // if it is left then just send back the error that data service catch
    if (result.isLeft()) {
      return Left(Exception(rawResult));
    }

    // check for specific status code.
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        return Right(Left(castedResponse));
      case HttpStatus.unprocessableEntity:
        return Right(Left(castedResponse));
      case HttpStatus.badRequest:
        return Right(Left(castedResponse));
      case HttpStatus.notFound:
        return Right(Left(castedResponse));
      case HttpStatus.internalServerError:
        return Right(Left(castedResponse));
      case HttpStatus.ok:
        return Right(Right(listCastedResponse));
      case HttpStatus.created:
        if (response.data is Iterable) {
          return Right(Right(listCastedResponse));
        } else {
          return const Right(Left({"msg": "Error status code must be 200, not 201"}));
        }
    }

    return Left(
        Exception('Something went wrong, please try again later. Unhandled status code: ${response.statusCode}'));
  }

  void _setSessionToken() {
    _uuid = const Uuid();
    _sessionToken = _uuid.v4();
  }

  void _setGoogleApiKey() {
    _googleApiKey = dotenv.env[EnvVariables.googleMapsApiKey]!;
  }
}
