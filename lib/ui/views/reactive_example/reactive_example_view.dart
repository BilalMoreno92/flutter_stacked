import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/smart_widgets/double_increase_widget/double_increase_counter.dart';
import 'package:flutter_arc/ui/smart_widgets/single_increase_widget/single_increase_counter.dart';


class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          children: const [
            SingleIncreaseCounter(),
            SizedBox(
              width: 50,
            ),
            DoubleIncreaseCounter()
          ],
        ),
      ),
    );
  }
}
