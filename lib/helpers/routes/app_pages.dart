// ignore: avoid_classes_with_only_static_members

import 'package:get/get.dart';
import 'package:moto_pay/features/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:moto_pay/features/bottom_nav_bar/botttom_nav_bar_binding/botttom_nav_bar_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  //  static const INITIAL = Routes.HOMESCREENLOADING;
  static const initial = "/";

  static final routes = [
    GetPage(
      name: "/",
      binding: BottomNavBarBinding(),
      page: () => const BottomSheetScreen(),
    ),
  ];
}
