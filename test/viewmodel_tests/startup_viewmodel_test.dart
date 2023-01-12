import 'package:flutter/widgets.dart';
import 'package:flutter_arc/app/app.router.dart';
import 'package:flutter_arc/ui/views/startup/startup_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import '../setup/test_helpers.dart';

void main() {
  Get.testMode = true;
  WidgetsFlutterBinding.ensureInitialized();
  group('StartupViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
    group('initialise -', () {
      test('When called should check hasUser on sharedPreferences', () async {
        var sharedPreferences = getAndRegisterSharedPreferencesMock();
        StartupViewModel model = StartupViewModel();
        await model.initialise();
        verify(sharedPreferences.hasUser);
      });
      test(
          'When called and hasUser returns true, should call replaceWith Routes.homeViewRoute',
          () async {
        var navigationService = getAndRegisterNavigationServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(navigationService.replaceWith(Routes.homeView));
      });
      test(
          'When called and hasUser return true, should get currentUser from database',
          () async {
        var database = getAndRegisterAppDatabaseMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(database.getCurrentAddress());
      });
      test('When hasUser is true and getCurrentAddres returns null, should navigate to addressSelection', () async{
        getAndRegisterAppDatabaseMock(returnAddress: false);
        var navigationService = getAndRegisterNavigationServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(navigationService.replaceWith(Routes.addressSelectionView));
      });
    });
  });
}
