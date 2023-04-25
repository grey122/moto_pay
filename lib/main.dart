import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'constants/color_selection.dart';
import 'helpers/routes/app_pages.dart';
import 'helpers/theme/theme.dart';

// get material app is being used instead of material app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await firebaseInitialization;

  runApp(
    GetMaterialApp(
      //  routerDelegate: ,
      initialRoute: AppPages.initial,
      title: 'xrda',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: ColorsConst.backgroundColor,
          systemOverlayStyle: lightTaskBar,
          titleSpacing: 5,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black, size: 20),
          // titleTextStyle: textTheme(context).titleSmall?.copyWith(fontSize: 18),
          centerTitle: false,
        ),
        // accentColor: colorSchemeData.secondary,
        scaffoldBackgroundColor: colorSchemeData.background,
      ),

      // accentTextTheme: textThemeData,

      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
    ),
  );
}
