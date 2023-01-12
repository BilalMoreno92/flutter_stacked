import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/app/app.router.dart';
import 'package:flutter_arc/datamodels/address.dart';
import 'package:flutter_arc/services/shared_preferences_service.dart';
import 'package:flutter_arc/system/app_database.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final SharedPreferencesService _sharedPreferences = locator<SharedPreferencesService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final AppDatabase _database = locator<AppDatabase>();

  List<String> get routes => Routes.all.toList();

  Future initialise() async {
    bool? hasUser = _sharedPreferences.hasUser;
    if (hasUser ?? false) {
      Address? currentAddress = await _database.getCurrentAddress();
      if (currentAddress ==null) {
        _navigationService.replaceWith(Routes.addressSelectionView);
      } else {
        _navigationService.replaceWith(Routes.homeView);
      }
      await _navigationService.replaceWith(Routes.homeView);
    }
    return Future.value(hasUser);
  }

  Future navigateToHome() async {
    await _navigationService.navigateToHomeView();
  }

  Future navigate(String route) async {
    await _navigationService.navigateTo(route);
  }
}
