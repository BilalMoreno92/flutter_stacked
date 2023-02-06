import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/validation_example/validation_example_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class ValidationExampleView extends StackedHookView {
  const ValidationExampleView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, model) {
    return ViewModelBuilder<ValidationExampleViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(),
      viewModelBuilder: () => ValidationExampleViewModel(),
    );
  }


}
