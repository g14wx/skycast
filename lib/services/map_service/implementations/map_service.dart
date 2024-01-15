import 'package:injectable/injectable.dart';
import 'package:skycast/data/search_directions/protocols/i_search_directions_service.dart';
import 'package:skycast/services/map_service/protocols/i_map_service.dart';

@Injectable(as: IMapService)
class MapService implements IMapService {
  final ISearchDirectionsService _searchDirectionsService;
  MapService(this._searchDirectionsService);

  @override
  Future<Iterable<String>> search(String query) async {
    final result = await _searchDirectionsService.getDirectionSuggestionsFromQuery(query: query);
    final resultFirstFold = result.fold((l) => null, (r) => r);
    final resultLastFold = resultFirstFold?.fold((l) => null, (r) => r);
    if (resultLastFold != null) {
      return resultLastFold.map((e) => e.direction);
    } else {
      return [];
    }
  }
}
