import 'package:mobx_weeknd/feature/dataListModel/model/data_model.dart';
import 'package:vexana/vexana.dart';

abstract class IDataService {
  final INetworkManager networkManager;
  IDataService(this.networkManager);
  Future<List<DataModel>?> dataFetch();
}

class DataService extends IDataService {
  DataService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<DataModel>?> dataFetch() async {
    final response = await networkManager.send<DataModel, List<DataModel>>(
        "posts",
        parseModel: DataModel(),
        method: RequestType.GET);
    return response.data;
  }
}
