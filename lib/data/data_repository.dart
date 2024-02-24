export 'models/models.dart';

part 'local_data_repository.dart';

abstract class DataRepository {
  const DataRepository();

  void getAllData();
}
