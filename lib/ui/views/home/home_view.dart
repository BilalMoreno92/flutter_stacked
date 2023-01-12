import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/home/home_viewmodel.dart';
import 'package:flutter_arc/ui/views/posts_example/posts_view.dart';
import 'package:flutter_arc/ui/views/todo/todo_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          reverse: viewModel.reverse,
          transitionBuilder: (Widget child, Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation) {
            return SharedAxisTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                child: child);
          },
          child: getViewForIndex(viewModel.currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[800],
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.art_track), label: "Posts"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Todos"),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const PostsView();
      case 1:
        return const TodoView();
      default:
        return const PostsView();
    }
  }
}
