import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/app_router.dart";
import "package:weather_app/features/home/bloc/tabbar_bloc.dart";
import "package:weather_app/utils/themes.dart";

/// Ana uygulamayı başlatır.
void main() => runApp(MyApp());

/// MyApp,main widget whole app
class MyApp extends StatelessWidget {
  /// Constructor for MyApp
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final BuildContext context) => TabBloc(),
        child: MaterialApp.router(
          // hook up router to MaterialApp
          routerConfig: _appRouter.config(),
          theme: CustomTheme.theme,
          darkTheme: CustomTheme.darkTheme,
        ),
      );
}
