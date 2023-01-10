import 'package:flutter_arc/services/api.dart';
import 'package:flutter_arc/services/counter_service.dart';
import 'package:flutter_arc/services/media_service.dart';
import 'package:flutter_arc/services/posts_service.dart';
import 'package:flutter_arc/ui/views/future_example/future_example_view.dart';
import 'package:flutter_arc/ui/views/home/home_view.dart';
import 'package:flutter_arc/ui/views/image_picker/image_picker_view.dart';
import 'package:flutter_arc/ui/views/partial_builds/partial_builds_view.dart';
import 'package:flutter_arc/ui/views/posts_example/posts_view.dart';
import 'package:flutter_arc/ui/views/reactive_example/reactive_example_view.dart';
import 'package:flutter_arc/ui/views/startup/startup_view.dart';
import 'package:flutter_arc/ui/views/stream_example/stream_example_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: HomeView, path: "/home"),
  MaterialRoute(page: PartialBuildsView),
  MaterialRoute(page: ReactiveExampleView),
  MaterialRoute(page: FutureExampleView),
  MaterialRoute(page: StreamExampleView),
  MaterialRoute(page: ImagePickerView),
  MaterialRoute(page: PostsView),
], dependencies: [
  Singleton(classType: NavigationService),
  Singleton(classType: DialogService),
  LazySingleton(classType: CounterService),
  LazySingleton(classType: MediaService),
  LazySingleton(classType: Api),
  LazySingleton(classType: PostsService),
])
class App {}
