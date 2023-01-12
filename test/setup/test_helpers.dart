import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/address.dart';
import 'package:flutter_arc/services/shared_preferences_service.dart';
import 'package:flutter_arc/system/app_database.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';

import 'test_helpers.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SharedPreferencesService>(),
  MockSpec<NavigationService>(),
  MockSpec<AppDatabase>(),
])
SharedPreferencesService getAndRegisterSharedPreferencesMock(
    {bool hasUser = true}) {
  _removeRegisterIfExists<SharedPreferencesService>();
  SharedPreferencesService service = MockSharedPreferencesService();

  when(service.hasUser).thenReturn(hasUser);

  locator.registerSingleton<SharedPreferencesService>(service);
  return service;
}

NavigationService getAndRegisterNavigationServiceMock() {
  _removeRegisterIfExists<NavigationService>();
  NavigationService service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

AppDatabase getAndRegisterAppDatabaseMock({bool returnAddress = true}) {
  _removeRegisterIfExists<AppDatabase>();
  AppDatabase service = MockAppDatabase();
  locator.registerSingleton<AppDatabase>(service);
  when(service.getCurrentAddress())
      .thenAnswer((realInvocation) async => returnAddress ? Address() : null);
  return service;
}

void registerServices() {
  getAndRegisterSharedPreferencesMock();
  getAndRegisterNavigationServiceMock();
  getAndRegisterAppDatabaseMock();
}

void unregisterServices() {
  locator.unregister<SharedPreferencesService>();
  locator.unregister<NavigationService>();
  locator.unregister<AppDatabase>();
}

void _removeRegisterIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
