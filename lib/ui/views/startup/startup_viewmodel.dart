import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  List<String> get routes => Routes.all.toList();

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }

  Future navigate(String route) async {
    await _navigationService.navigateTo(route);
  }
}
