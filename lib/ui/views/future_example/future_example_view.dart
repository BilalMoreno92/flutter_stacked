import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends ViewModelBuilderWidget<FutureExampleViewModel> {
  const FutureExampleView({Key? key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  Widget builder(
      BuildContext context, FutureExampleViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: viewModel.isBusy
            ? const CircularProgressIndicator()
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text(viewModel.data ?? "NO_DATA"), _ErrorMessage()],
              ),
      ),
    );
  }

  @override
  FutureExampleViewModel viewModelBuilder(BuildContext context) =>
      FutureExampleViewModel();
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  @override
  Widget build(BuildContext context, FutureExampleViewModel viewModel) {
    return viewModel.hasError
        ? Text(
            viewModel.errorMessage,
            style: const TextStyle(color: Colors.red),
          )
        : Container();
  }
}
