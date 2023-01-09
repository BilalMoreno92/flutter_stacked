import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/future_example/future_example_viewmodel.dart';
import 'package:flutter_arc/ui/views/stream_example/stream_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StreamExampleView extends ViewModelBuilderWidget<StreamExampleViewModel> {
  const StreamExampleView({Key? key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  Widget builder(
      BuildContext context, StreamExampleViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(viewModel.title),
      ),
      floatingActionButton: FloatingActionButton(onPressed: viewModel.swapSources),
    );
  }

  @override
  StreamExampleViewModel viewModelBuilder(BuildContext context) =>
      StreamExampleViewModel();
}