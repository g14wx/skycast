import 'package:hive_flutter/hive_flutter.dart';
// interfaces
import 'package:skycast/services/data_storage/protocols/i_initialization_of_data_storage_service.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: IInitializationOfDataStorageService)
class InitializationOfDataStorageService implements IInitializationOfDataStorageService {
  @override
  Future initializationOfDataStorageService() {
    return Hive.initFlutter();
  }
}
