// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/future_example/future_example_view.dart'
    as _i6;
import 'package:flutter_arc/ui/views/home/home_view.dart' as _i3;
import 'package:flutter_arc/ui/views/image_picker/image_picker_view.dart'
    as _i8;
import 'package:flutter_arc/ui/views/partial_builds/partial_builds_view.dart'
    as _i4;
import 'package:flutter_arc/ui/views/reactive_example/reactive_example_view.dart'
    as _i5;
import 'package:flutter_arc/ui/views/startup/startup_view.dart' as _i2;
import 'package:flutter_arc/ui/views/stream_example/stream_example_view.dart'
    as _i7;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i9;

class Routes {
  static const startupView = '/';

  static const homeView = '/home';

  static const partialBuildsView = '/partial-builds-view';

  static const reactiveExampleView = '/reactive-example-view';

  static const futureExampleView = '/future-example-view';

  static const streamExampleView = '/stream-example-view';

  static const imagePickerView = '/image-picker-view';

  static const all = <String>{
    startupView,
    homeView,
    partialBuildsView,
    reactiveExampleView,
    futureExampleView,
    streamExampleView,
    imagePickerView,
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
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i9.NavigationService {
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
}
