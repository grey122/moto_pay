import 'package:flutter/material.dart';

import 'package:get/get.dart';

// import '/lib/common/utils/location_text.dart';

class BottomNavBarCtr extends GetxController {
  final bool mounted;
  var tabindex = 0;
  var userId = "";
  bool showBadge = false;

  //
  BottomNavBarCtr(this.mounted);

  @override
  void onInit() async {
    // if (Get.arguments != null && Get.arguments is int) {
    //   tabindex = Get.arguments as int;
    //   update();
    // }
    // some time we might call the home page and force it to navigate to a differnt tab

    super.onInit();
  }

  Future<void> changeTabIndex(int index, BuildContext context) async {
    tabindex = index;

    update();
  }
}

const _tag = "Bottom Nav Controler";
