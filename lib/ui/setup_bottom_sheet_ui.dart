import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/ui/enums/bottom_sheet_type.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:flutter/material.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.floating: (context, sheetRequest, completer) =>
        _FloatingBoxBottomSheet(
          request: sheetRequest,
          completer: completer,
        )
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}

class _FloatingBoxBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const _FloatingBoxBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            request.title ?? "",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            request.description ?? "",
            style: const TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () => completer(SheetResponse(confirmed: true)),
                child: Text(
                  request.secondaryButtonTitle ?? "",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              ElevatedButton(
                onPressed: () => completer(SheetResponse(confirmed: true)),
                child: Text(
                  request.mainButtonTitle ?? "",
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
