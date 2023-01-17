import 'package:flutter/material.dart';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/ui/enums/dialog_type.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();

  var builders = {
    DialogType.form: (BuildContext context, DialogRequest dialogRequest,
            Function(DialogResponse) completer) =>
        Dialog(
          child: _FormCustomDialog(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
    DialogType.basic: (BuildContext context, DialogRequest dialogRequest,
            Function(DialogResponse) completer) =>
        Dialog(
          child: _BasicCustomDialog(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

class _BasicCustomDialog extends StatelessWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse)? onDialogTap;
  const _BasicCustomDialog({Key? key, required this.dialogRequest, this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            dialogRequest.title ?? "Title",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            dialogRequest.description ?? "Description",
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => onDialogTap?.call(DialogResponse(confirmed: true)),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: dialogRequest.showIconInMainButton ?? false
                  ? const Icon(Icons.check_circle)
                  : Text(dialogRequest.mainButtonTitle ?? "Ok"),
            ),
          )
        ],
      ),
    );
  }
}

class _FormCustomDialog extends HookWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse)? onDialogTap;
  const _FormCustomDialog({Key? key, required this.dialogRequest, this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = useTextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            dialogRequest.title ?? "Title",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () =>
                onDialogTap?.call(DialogResponse(data: [controller.text])),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: dialogRequest.showIconInMainButton ?? false
                  ? const Icon(Icons.check_circle)
                  : Text(dialogRequest.mainButtonTitle ?? "Ok"),
            ),
          )
        ],
      ),
    );
  }
}
