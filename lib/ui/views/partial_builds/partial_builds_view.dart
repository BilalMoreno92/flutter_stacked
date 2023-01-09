import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends ViewModelBuilderWidget<PartialBuildsViewModel> {
  const PartialBuildsView({Key? key}) : super(key: key);

  @override
  bool get reactive => false;

  @override
  Widget builder(
      BuildContext context, PartialBuildsViewModel viewModel, Widget? child) {
    if (kDebugMode) {
      print("PartialBuildsView rebuilt");
    }
    return Scaffold(
      appBar: AppBar(title: Text(viewModel.title),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [_StringForm(), _TitleAndValue()],
      ),
    );
  }

  @override
  PartialBuildsViewModel viewModelBuilder(BuildContext context) =>
      PartialBuildsViewModel();
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  const _StringForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel viewModel) {
    if (kDebugMode) {
      print("StringForm rebuilt");
    }
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: viewModel.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValue({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel viewModel) {
    if (kDebugMode) {
      print("TitleAndValue rebuilt");
    }
    return Column(
      children: [Text(viewModel.title)],
    );
  }
}
