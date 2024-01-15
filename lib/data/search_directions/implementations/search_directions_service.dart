import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/data/models/custom_place/custom_place.dart';
import 'package:skycast/data/models/place_from_api/place_from_api.dart';
import 'package:skycast/data/search_directions/protocols/i_search_directions_requests.dart';
import 'package:skycast/data/search_directions/protocols/i_search_directions_service.dart';

@Singleton(as: ISearchDirectionsService)
class SearchDirectionService implements ISearchDirectionsService {
  final ISearchDirectionsRequests _requester;

  SearchDirectionService(this._requester);

  @override
  Future<Either<Exception, Either<Exception, List<CustomPlace>>>> getDirectionSuggestionsFromQuery(
      {required String query}) async {
    final result = await _requester.getDirectionSuggestionsFromQuery(query: query);

    // if something went wrong, then just return the exception.
    if (result.isLeft()) {
      final exception = result.fold((l) => l, (r) => null);
      return Left(exception!);
    }

    final rawResult = result.fold((l) => null, (r) => r);

    // if there is some message to pass the server, then we return the object
    if (rawResult!.isLeft()) {
      final json = rawResult.fold((l) => l, (r) => null);
      return Right(Left(Exception(json.toString())));
    }

    try {
      final jsonListSuccess = rawResult.fold((l) => null, (r) => r);
      final placesFromApi = jsonListSuccess!.map((json) {
        return PlaceFromApi.fromJson(json);
      }).toList();
      List<PlaceFromApi> placesFromApiToBeFormatted = [...placesFromApi];
      List<CustomPlace> customPlaces =
          placesFromApiToBeFormatted.map((e) => CustomPlace(direction: e.description, placeId: e.place_id)).toList();
      return Right(Right(customPlaces));
    } catch (e) {
      debugPrint(e.toString());
      return Left(Exception("Parsing error"));
    }
  }
}
