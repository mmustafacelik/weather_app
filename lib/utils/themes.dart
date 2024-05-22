// ignore_for_file: public_member_api_docs

import "package:flutter/material.dart";

///This class is used to create a custom theme for the app.
mixin CustomTheme {
  ///this class is used to create a custom theme for the app.
  static const Color primary = Color(0xffFFFFFF);

  ///this is the primary color of the app.
  static const Color primaryLight = Color(0xff000000);

  ///this is the light version of the primary color.
  static const Color secondary = Color(0xffA09EB5);

  ///this is the secondary color of the app.
  static const Color secondaryLight = Color(0xff86878C);

  ///this is the light version of the secondary color.
  static const Color tertiaryLight = Color(0xffBDBFC3);

  ///this is the primary blue color of the app.
  static const Color tertiary = Color(0xff686586);

  ///this is the primary yellow color of the app.
  static const Color quaternaryLight = Color(0xffD3D5DA);

  ///this is the primary red color of the app.
  static const Color quaternary = Color(0xff514E74);

  ///this is the firstSolid color of the app.
  static const Color firstSolid = Color(0xff48319D);

  ///this is the secondSolid color of the app.
  static const Color secondSolid = Color(0xff1F1D47);

  ///this is the thirdSolid color of the app.

  static const Color thirdSolid = Color(0xffC427FB);

  ///this is the fourthSolid color of the app.

  static const Color fourthSolid = Color(0xffE0D9FF);

  ///this is the primary red color of the app.
  static const Color errorColor = Color(0xffD02042);

  ///this is the border color of the app.
  static const Color borderColor = Color(0xff7B45D9);

  ///This is the color of the white to black colors.
  static const Color neutral100 = Color(0xff000000); // Black
  static const Color neutral90 = Color(0xff1A1A1A);
  static const Color neutral80 = Color(0xff333333);
  static const Color neutral70 = Color(0xff4D4D4D);
  static const Color neutral60 = Color(0xff666666);
  static const Color neutral50 = Color(0xff808080);
  static const Color neutral45 = Color(0xff8C8C8C);
  static const Color neutral40 = Color(0xff999999);
  static const Color neutral35 = Color(0xffA6A6A6);
  static const Color neutral30 = Color(0xffB3B3B3);
  static const Color neutral25 = Color(0xffBFBFBF);
  static const Color neutral20 = Color(0xffCCCCCC);
  static const Color neutral15 = Color(0xffD9D9D9);
  static const Color neutral10 = Color(0xffE6E6E6);
  static const Color neutral05 = Color(0xffF2F2F2);
  static const Color neutral00 = Color(0xffFFFFFF); // White

  ///lineat gradient for the first color.
  static const LinearGradient firstGradient = LinearGradient(
    begin: Alignment.topLeft,
    stops: <double>[0, 0.7],
    colors: <Color>[
      Color(0xff2E335A),
      Color(0xff1C1B33),
    ],
  );

  ///
  static LinearGradient secondGradient = LinearGradient(
    begin: Alignment.centerRight,
    stops: <double>[0, 0.7],
    colors: <Color>[
      Color(0xff5936B4).withOpacity(.9),
      Color(0xff362A84),
    ],
  );

  ///
  static const LinearGradient thirdGradient = LinearGradient(
    begin: Alignment.topLeft,
    stops: <double>[0, 0.7],
    colors: <Color>[
      Color(0xff3658B1),
      Color(0xffC159EC),
    ],
  );

  ///
  static const LinearGradient fourthGradient = LinearGradient(
    begin: Alignment.topLeft,
    stops: <double>[0, 0.7],
    colors: <Color>[
      Color(0xffAEC9FF),
      Color(0xff083072),
    ],
  );

  ///
  static const RadialGradient firstRadialGradient = RadialGradient(
    stops: <double>[0, 0.7],
    colors: <Color>[
      Color(0xffF7CBFD),
      Color(0xff7758D1),
    ],
  );

  ///This is the font used in the app.

  ///this is the font used in the app.
  static ThemeData theme = ThemeData(
    primaryColor: primary,
    primaryColorLight: primary,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: primary,
      secondary: secondary,
      onSecondary: secondary,
      error: errorColor,
      onError: errorColor,
      background: Color(0xffFFFFFF),
      onBackground: Color(0xffFFFFFF),
      surface: Color(0xffFFFFFF),
      onSurface: Color(0xffFFFFFF),
      tertiary: Colors.amber,
    ),
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
    // iconButtonTheme: IconButtonThemeData(
    //   style: IconButton.styleFrom(
    //     backgroundColor: neutral70,
    //   ),
    // ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll<Color?>(
          Colors.white,
        ),
      ),
    ),
/*     primaryColorDark: black,
    primaryColorLight: secondary,
    fontFamily: fontPoppins,
    scaffoldBackgroundColor: Colors.white,
    indicatorColor: white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.white,
    disabledColor: muted,
    dividerColor: gray, */
    /*  pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ), */
    /* elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
          ),
        ),
      ),
    ), */
    tabBarTheme: const TabBarTheme(
      labelColor: CustomTheme.neutral10,
      unselectedLabelColor: CustomTheme.neutral50,
      labelStyle: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      //Headline1 yerine kullanılıyor.
      displayLarge: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 36,
      ),
      //Headline2 yerine kullanılıyor.
      displayMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
      //Headline3 yerine kullanılıyor.
      displaySmall: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
      //Headline4 yerine kullanılıyor.
      headlineMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 13,
      ),
    ),

    /* 
    platform: TargetPlatform.iOS, */
    /*  iconTheme: const IconThemeData(color: secondary),
    expansionTileTheme: const ExpansionTileThemeData(
      iconColor: secondary,
      collapsedIconColor: secondary,
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(
          primary: primary,
          secondary: secondary,
        )
        .copyWith(background: Colors.white)
        .copyWith(error: Colors.red), */
  );

  ///This is the dark theme used in the app.
  static ThemeData darkTheme = ThemeData(
    primaryColor: CustomTheme.primary,
    primaryColorLight: Colors.grey[350],
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.grey,
      onPrimary: Colors.grey,
      secondary: secondary,
      onSecondary: secondary,
      error: errorColor,
      onError: errorColor,
      background: primaryLight,
      onBackground: primaryLight,
      surface: primaryLight,
      onSurface: primaryLight,
      // tertiary: primaryYellow,
    ),
    scaffoldBackgroundColor: primaryLight,
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll<Color?>(
          secondSolid,
        ),
      ),
    ),
    // iconButtonTheme: IconButtonThemeData(
    //   style: ButtonStyle(
    //     iconColor: MaterialStatePropertyAll(
    //       Colors.amber,
    //     ),
    //   ),
    // ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: secondSolid,
    ),
    // iconButtonTheme: IconButtonThemeData(
    //     style: IconButton.styleFrom(
    //   backgroundColor: neutral10,
    // ),),

/*     primaryColorDark: black,
    primaryColorLight: secondary,
    fontFamily: fontPoppins,
    scaffoldBackgroundColor: Colors.white,
    indicatorColor: white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.white,
    disabledColor: muted,
    dividerColor: gray, */
    /*  pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ), */
    /* elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
          ),
        ),
      ),
    ), */

    textTheme: const TextTheme(
      //Headline1 yerine kullanılıyor.
      displayLarge: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 36,
      ),
      //Headline2 yerine kullanılıyor.
      displayMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
      //Headline3 yerine kullanılıyor.
      displaySmall: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      ),
      //Headline4 yerine kullanılıyor.
      headlineMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontFamily: "SFProDisplay-Regular",
        color: primary,
        fontWeight: FontWeight.w600,
        fontSize: 13,
      ),
    ),
    /* 
    platform: TargetPlatform.iOS, */
    /*  iconTheme: const IconThemeData(color: secondary),
    expansionTileTheme: const ExpansionTileThemeData(
      iconColor: secondary,
      collapsedIconColor: secondary,
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(
          primary: primary,
          secondary: secondary,
        )
        .copyWith(background: Colors.white)
        .copyWith(error: Colors.red), */
  );
}
