import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dialog_example_viewmodel.dart';

class DialogExampleView extends StatelessWidget {
  const DialogExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DialogExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                child: const Text('Show Basic Dialog'),
                onPressed: () => model.showBasicDialog(),
              ),
              const SizedBox(height: 25),
              OutlinedButton(
                child: const Text('Show Confirmation Dialog'),
                onPressed: () => model.showConfirmationDialog(),
              ),
              Text('Confirmation result: ${model.confirmationResult}'),
              const SizedBox(height: 25),
              OutlinedButton(
                child: const Text('Show Custom Dialog'),
                onPressed: () => model.showCustomDialog(),
              ),
              Text('Custom Dialog result: ${model.customDialogResult}'),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DialogExampleViewModel(),
    );
  }
}
