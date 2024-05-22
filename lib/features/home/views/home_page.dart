import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:weather_app/constants/assets_path.dart";
import "package:weather_app/constants/sizes.dart";
import "package:weather_app/features/home/bloc/tabbar_bloc.dart";
import "package:weather_app/features/home/bloc/tabbar_events.dart";
import "package:weather_app/features/home/bloc/tabbar_state.dart";
import "package:weather_app/utils/extensions.dart";
import "package:weather_app/utils/themes.dart";
import "package:weather_app/widgets/custom_snackbar.dart";
import "package:weather_app/widgets/glass_morphizm.dart";

@RoutePage()

/// HomePage, main page of the app
class HomePage extends StatelessWidget {
  /// Constructor for HomePage
  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/background_image.jpg",
              width: context.width,
              height: context.height,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Hello World"),
                GlassMorpContainer(
                  blur: .9,
                  child: Container(
                    height: context.height / 5.78,
                    width: context.width / 6.5,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomTheme.borderColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "12 AM",
                          style: context.bodLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    CustomSnackBar.show(
                      context,
                      text: "Hello World",
                    );
                  },
                  child: const Text("Show sdasd"),
                ),
              ],
            ),
            Positioned(
              top: context.height / 2.4,
              child: Image.asset(
                AssetsPath.house,
                fit: BoxFit.cover,
              ),
            ),
            DraggableScrollableSheet(
              builder: (
                final BuildContext context,
                final ScrollController scrollController,
              ) =>
                  GlassMorpContainer(
                blur: .9,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 8,
                          margin: const EdgeInsets.only(
                            top: Sizes.p16,
                            bottom: Sizes.p16,
                          ),
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                50,
                              ),
                            ),
                            color: CustomTheme.neutral60,
                          ),
                        ),
                        BlocBuilder<TabBloc, TabState>(
                          builder: (
                            final BuildContext context,
                            final TabState state,
                          ) =>
                              TabBar(
                            dividerColor: CustomTheme.neutral60,
                            indicatorSize: TabBarIndicatorSize.tab,
                            onTap: (final int index) {
                              context.read<TabBloc>().add(TabSelected(index));
                            },
                            tabs: const <Widget>[
                              Tab(text: "Hourly Forecast"),
                              Tab(text: "Weekly Forecast"),
                            ],
                          ),
                        ),
                        BlocBuilder<TabBloc, TabState>(
                          builder: (final BuildContext context,
                              final TabState state) {
                            switch (state.selectedIndex) {
                              case 0:
                                return const Center(child: Text("Content 1"));
                              case 1:
                                return const Center(child: Text("Content 2"));
                              default:
                                return const Center(child: Text("Content 1"));
                            }
                          },
                        ),
                        SizedBox(
                          height: context.height / 2,
                          child: ListView.builder(
                            controller: scrollController,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (
                              final BuildContext context,
                              final int index,
                            ) =>
                                ListTile(
                              title: Text("Item $index"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTapDown: (final TapDownDetails details) {
                  // Resmin belirli bir noktasına basıldığında çalıştırılacak fonksiyon.
                  if (details.localPosition.dx < context.width / 3) {
                    print("Sol köşeye basıldı!");
                  } else if (details.localPosition.dx < context.width / 1.5) {
                    print("Ortaya basıldı!");
                  } else if (details.localPosition.dx > context.width / 1.5 &&
                      details.localPosition.dx < context.width) {
                    print("Sağ  köşeye basıldı!");
                  }
                },
                child: SvgPicture.asset(
                  AssetsPath.bottomNavBar,
                  width: context.width,
                ),
              ),
            ),
          ],
        ),
      );
}
