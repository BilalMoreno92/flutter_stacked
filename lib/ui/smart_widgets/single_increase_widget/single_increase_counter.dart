import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/smart_widgets/single_increase_widget/single_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter
    extends ViewModelBuilderWidget<SingleIncreaseCounterViewModel> {
  const SingleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, SingleIncreaseCounterViewModel viewModel,
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
            const Text("Tap to increment counter"),
            Text(viewModel.counter.toString())
          ],
        ),
      ),
    );
  }

  @override
  SingleIncreaseCounterViewModel viewModelBuilder(BuildContext context) =>
      SingleIncreaseCounterViewModel();
}
