import 'package:dartz/dartz.dart';

abstract class ISearchDirectionsRequests {
  Future<Either<Exception, Either<Map<String, dynamic>, List<Map<String, dynamic>>>>> getDirectionSuggestionsFromQuery(
      {required String query});
}
