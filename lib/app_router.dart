import "package:auto_route/auto_route.dart";
import "package:weather_app/features/home/views/home_page.dart";
part "app_router.gr.dart";

@AutoRouterConfig()

/// AppRouter class is made by  auto_route
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
