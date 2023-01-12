import 'package:flutter_arc/ui/validation_example/validation_example_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ValidationExampleViewModelTest -', () {
    group('canSubmit', () {
      test('When constructed canSubmmit should be false', () {
        var model = ValidationExampleViewModel();
        expect(model.canSubmit, false);
      });
      test('When setName is called and no contact is set, should be false', () {
        var model = ValidationExampleViewModel();
        model.setName('Bilal Moreno');
        expect(model.canSubmit, false);
      });
      test('When setName is called and valid email is set, should be true', () {
        var model = ValidationExampleViewModel();
        model.setName('Bilal Moreno');
        model.setEmail('bilalmoreno92@gmail.com');
        expect(model.canSubmit, true);
      });
    });
  });
}
