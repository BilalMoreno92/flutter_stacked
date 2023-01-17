// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';

import '../services/api.dart';
import '../services/counter_service.dart';
import '../services/media_service.dart';
import '../services/posts_service.dart';
import '../services/shared_preferences_service.dart';
import '../system/app_database.dart';
import '../ui/views/posts_example/posts_viewmodel.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => CounterService());
  locator.registerLazySingleton(() => MediaService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => PostsService());
  locator.registerLazySingleton(() => AppDatabase());
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(DialogService());
  locator.registerSingleton(SnackbarService());
  locator.registerSingleton(SharedPreferencesService());
  locator.registerSingleton(PostsViewModel());
  locator.registerSingleton(BottomSheetService());
}
