import 'package:flutter/material.dart';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:stacked/stacked.dart';

import 'posts_viewmodel.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostsViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : !model.hasError
                ? ListView.separated(
                    key: const PageStorageKey('storage-key'),
                    itemCount: model.data!.length,
                    itemBuilder: (context, index) => Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 35),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        model.data?[index].title ?? "No data",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  )
                : Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      model.error.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
      ),
      viewModelBuilder: () => locator<PostsViewModel>(),
    );
  }
}
