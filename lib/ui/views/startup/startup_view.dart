import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, StartupViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
          children: viewModel.routes
              .map((route) => ListTile(
                    title: Text(route),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () => viewModel.navigate(route),
                  ))
              .toList()),
      floatingActionButton:
          FloatingActionButton(onPressed: viewModel.navigateToHome),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();
}
