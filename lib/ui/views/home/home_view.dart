import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(viewModel.title)),
      floatingActionButton:
          FloatingActionButton(onPressed: viewModel.updateCounter),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
