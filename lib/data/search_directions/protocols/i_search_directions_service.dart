import 'package:dartz/dartz.dart';
import 'package:skycast/data/models/custom_place/custom_place.dart';

abstract class ISearchDirectionsService {
  Future<Either<Exception, Either<Exception, List<CustomPlace>>>> getDirectionSuggestionsFromQuery(
      {required String query});
}
