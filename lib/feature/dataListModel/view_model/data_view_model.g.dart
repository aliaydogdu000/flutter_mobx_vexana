// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataViewModel on _DataViewModelBase, Store {
  final _$dataModelAtom = Atom(name: '_DataViewModelBase.dataModel');

  @override
  List<DataModel>? get dataModel {
    _$dataModelAtom.reportRead();
    return super.dataModel;
  }

  @override
  set dataModel(List<DataModel>? value) {
    _$dataModelAtom.reportWrite(value, super.dataModel, () {
      super.dataModel = value;
    });
  }

  final _$IsLoadingAtom = Atom(name: '_DataViewModelBase.IsLoading');

  @override
  bool get IsLoading {
    _$IsLoadingAtom.reportRead();
    return super.IsLoading;
  }

  @override
  set IsLoading(bool value) {
    _$IsLoadingAtom.reportWrite(value, super.IsLoading, () {
      super.IsLoading = value;
    });
  }

  final _$fetchDataAsyncAction = AsyncAction('_DataViewModelBase.fetchData');

  @override
  Future<void> fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  @override
  String toString() {
    return '''
dataModel: ${dataModel},
IsLoading: ${IsLoading}
    ''';
  }
}
