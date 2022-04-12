import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_weeknd/core/base_view_model.dart';
import 'package:mobx_weeknd/feature/dataListModel/model/data_model.dart';
import 'package:mobx_weeknd/feature/dataListModel/service/data_service.dart';
part 'data_view_model.g.dart';

class DataViewModel = _DataViewModelBase with _$DataViewModel;

abstract class _DataViewModelBase with Store, BaseViewModel {
  late IDataService dataService;
  @observable
  List<DataModel>? dataModel;
  @observable
  bool IsLoading = true;
  void changeLoading() {
    IsLoading = !IsLoading;
  }

  @action
  Future<void> fetchData() async {
    changeLoading();
    dataModel = await dataService.dataFetch();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    dataService = DataService(networkManager);
    fetchData();
  }
}
