// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/address_selection/address_selection_view.dart'
    as _i10;
import 'package:flutter_arc/ui/views/bottom_sheet_example/bottom_sheet_example_view.dart'
    as _i14;
import 'package:flutter_arc/ui/views/dark_light/dark_light_view.dart' as _i13;
import 'package:flutter_arc/ui/views/dialog_example/dialog_example_view.dart'
    as _i11;
import 'package:flutter_arc/ui/views/future_example/future_example_view.dart'
    as _i6;
import 'package:flutter_arc/ui/views/home/home_view.dart' as _i3;
import 'package:flutter_arc/ui/views/image_picker/image_picker_view.dart'
    as _i8;
import 'package:flutter_arc/ui/views/multiple_themes/multiple_themes_view.dart'
    as _i12;
import 'package:flutter_arc/ui/views/partial_builds/partial_builds_view.dart'
    as _i4;
import 'package:flutter_arc/ui/views/posts_example/posts_view.dart' as _i9;
import 'package:flutter_arc/ui/views/reactive_example/reactive_example_view.dart'
    as _i5;
import 'package:flutter_arc/ui/views/startup/startup_view.dart' as _i2;
import 'package:flutter_arc/ui/views/stream_example/stream_example_view.dart'
    as _i7;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const startupView = '/';

  static const homeView = '/home';

  static const partialBuildsView = '/partial-builds-view';

  static const reactiveExampleView = '/reactive-example-view';

  static const futureExampleView = '/future-example-view';

  static const streamExampleView = '/stream-example-view';

  static const imagePickerView = '/image-picker-view';

  static const postsView = '/posts-view';

  static const addressSelectionView = '/address-selection-view';

  static const dialogExampleView = '/dialog-example-view';

  static const multipleThemesView = '/multiple-themes-view';

  static const darkLightView = '/dark-light-view';

  static const bottomSheetExampleView = '/bottom-sheet-example-view';

  static const all = <String>{
    startupView,
    homeView,
    partialBuildsView,
    reactiveExampleView,
    futureExampleView,
    streamExampleView,
    imagePickerView,
    postsView,
    addressSelectionView,
    dialogExampleView,
    multipleThemesView,
    darkLightView,
    bottomSheetExampleView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i3.HomeView,
    ),
    _i1.RouteDef(
      Routes.partialBuildsView,
      page: _i4.PartialBuildsView,
    ),
    _i1.RouteDef(
      Routes.reactiveExampleView,
      page: _i5.ReactiveExampleView,
    ),
    _i1.RouteDef(
      Routes.futureExampleView,
      page: _i6.FutureExampleView,
    ),
    _i1.RouteDef(
      Routes.streamExampleView,
      page: _i7.StreamExampleView,
    ),
    _i1.RouteDef(
      Routes.imagePickerView,
      page: _i8.ImagePickerView,
    ),
    _i1.RouteDef(
      Routes.postsView,
      page: _i9.PostsView,
    ),
    _i1.RouteDef(
      Routes.addressSelectionView,
      page: _i10.AddressSelectionView,
    ),
    _i1.RouteDef(
      Routes.dialogExampleView,
      page: _i11.DialogExampleView,
    ),
    _i1.RouteDef(
      Routes.multipleThemesView,
      page: _i12.MultipleThemesView,
    ),
    _i1.RouteDef(
      Routes.darkLightView,
      page: _i13.DarkLightView,
    ),
    _i1.RouteDef(
      Routes.bottomSheetExampleView,
      page: _i14.BottomSheetExampleView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.HomeView(),
        settings: data,
      );
    },
    _i4.PartialBuildsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PartialBuildsView(),
        settings: data,
      );
    },
    _i5.ReactiveExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ReactiveExampleView(),
        settings: data,
      );
    },
    _i6.FutureExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.FutureExampleView(),
        settings: data,
      );
    },
    _i7.StreamExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.StreamExampleView(),
        settings: data,
      );
    },
    _i8.ImagePickerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ImagePickerView(),
        settings: data,
      );
    },
    _i9.PostsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PostsView(),
        settings: data,
      );
    },
    _i10.AddressSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.AddressSelectionView(),
        settings: data,
      );
    },
    _i11.DialogExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.DialogExampleView(),
        settings: data,
      );
    },
    _i12.MultipleThemesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.MultipleThemesView(),
        settings: data,
      );
    },
    _i13.DarkLightView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.DarkLightView(),
        settings: data,
      );
    },
    _i14.BottomSheetExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.BottomSheetExampleView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPartialBuildsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.partialBuildsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReactiveExampleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.reactiveExampleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFutureExampleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.futureExampleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStreamExampleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.streamExampleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToImagePickerView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.imagePickerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.postsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddressSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addressSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDialogExampleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dialogExampleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMultipleThemesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.multipleThemesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDarkLightView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.darkLightView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBottomSheetExampleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bottomSheetExampleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
