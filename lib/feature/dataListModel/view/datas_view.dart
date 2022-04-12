import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_weeknd/components/string_datas.dart';
import 'package:mobx_weeknd/core/base_view.dart';
import 'package:mobx_weeknd/feature/dataListModel/view_model/data_view_model.dart';

class dataView extends StatelessWidget {
  const dataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<DataViewModel>(
      viewModel: DataViewModel(),
      onModelReady: (model) {
        model.init();
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, DataViewModel viewModel) =>
          Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(StringDatas.appBarTitle)),
        body: Observer(
          builder: (_) {
            return viewModel.IsLoading
                ? listViewBuilder(viewModel)
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }

  ListView listViewBuilder(DataViewModel viewModel) {
    return ListView.builder(
        itemCount: viewModel.dataModel?.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(height: 100, child: cardBuilder(viewModel, index));
        });
  }

  Card cardBuilder(DataViewModel viewModel, int index) {
    return Card(
      elevation: 10,
      child: textContents(viewModel, index),
    );
  }

  Column textContents(DataViewModel viewModel, int index) {
    return Column(
      children: [
        Text(viewModel.dataModel?[index].id.toString() ?? ""),
        Text(viewModel.dataModel?[index].title ?? ""),
      ],
    );
  }
}
