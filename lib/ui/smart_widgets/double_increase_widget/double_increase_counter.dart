import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/smart_widgets/double_increase_widget/double_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter
    extends ViewModelBuilderWidget<DoubleIncreaseCounterViewModel> {
  const DoubleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, DoubleIncreaseCounterViewModel viewModel,
      Widget? child) {
    return GestureDetector(
      onTap: viewModel.updateCounter,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Tap to double counter"),
            Text(viewModel.counter.toString())
          ],
        ),
      ),
    );
  }

  @override
  DoubleIncreaseCounterViewModel viewModelBuilder(BuildContext context) =>
      DoubleIncreaseCounterViewModel();
}
