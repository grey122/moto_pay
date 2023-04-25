import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moto_pay/constants/icon_assets.dart';
import 'package:moto_pay/constants/image_assets.dart';

import '../home/view/home.dart';
import '../profile/view/profile.dart';
import '../shared_widgets/svgs.dart';
import 'controllers/botttom_nav_bar_controller.dart';

class BottomSheetScreen extends StatefulWidget {
  static const tag = "BottomSheetScreen";

  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<BottomNavBarCtr>();
    // Log.d(BottomSheetScreen.tag, "this prints");
    // String? uId;
    // if (Get.arguments != null && Get.arguments is String) {
    //   us = Get.arguments;
    // }
    // vendor ??= User.empty();

    return GetBuilder<BottomNavBarCtr>(
        // init: BottomNavBarCtr(mounted),
        autoRemove: false,
        builder: (controller) {
          // Log.d(
          //     BottomSheetScreen.tag, "ctrl showbadge  ${controller.showBadge}");
          List<Widget> pages = <Widget>[
            const Home(),

            // TestRating(),
            // TestExapleNotification(),
            //  const  ServiceHome(),
            const Center(
              child: Text("number 2"),
            ),
            const Center(
              child: Text("number 3"),
            ),
            const Profile(),
            const Center(
              child: Text("number 4"),
            ),
          ];
          return Scaffold(
              appBar: AppBar(
                toolbarHeight: 0.0,
                // title: Text("Scaffold"),
              ),
              body: SafeArea(
                child: pages.elementAt(controller.tabindex),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                //Floating action button on Scaffold
                onPressed: () async {
                  await controller.changeTabIndex(0, context);
                  //code to execute on button press
                },
                child: Image.asset(ImageAssets.logo), //icon inside button
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: NavBAr(
                currentIndex: controller.tabindex,
                onTap: (index) async =>
                    await controller.changeTabIndex(index, context),
              ));
        });
  }
}

class NavBAr extends StatelessWidget {
  const NavBAr({
    Key? key,
    required this.currentIndex,
    this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<BottomNavBarCtr>();
    return BottomAppBar(

        // fixedColor: colorScheme(context).secondary,
        //  color:Colors.redAccent,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        // backgroundColor: colorScheme(context).primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavText(
                  icon: IconsAssets.chat,
                  tittle: "Chat",
                  currentIndex: 0,
                  onTap: () {}),
              const BottomNavText(
                  icon: IconsAssets.discover,
                  tittle: "Discover",
                  currentIndex: 1),
              const BottomNavText(
                  icon: IconsAssets.bag, tittle: "Shop", currentIndex: 2),
              BottomNavText(
                icon: IconsAssets.profile,
                tittle: "Profile",
                currentIndex: 4,
                onTap: () async {
                  await ctrl.changeTabIndex(3, context);
                },
              ),
            ],
          ),
        )
        // ro: [
        //   const BottomNavigationBarItem(
        //       activeIcon: SvgIcon(IconsAssets.chat),
        //       label: "Chat",
        //       icon: SvgIcon(IconsAssets.chat)),
        //   const BottomNavigationBarItem(
        //     label: "Discover",
        //     activeIcon: SvgIcon(IconsAssets.discover),
        //     icon: SvgIcon(IconsAssets.discover),
        //   ),
        //   BottomNavigationBarItem(
        //       activeIcon: SvgIcon(
        //         IconsAssets.bag,
        //         color: colorScheme(context).primary,
        //       ),
        //       label: "Shop",
        //       icon: const SvgIcon(IconsAssets.bag)),
        //   const BottomNavigationBarItem(
        //       activeIcon: SvgIcon(IconsAssets.profile),
        //       label: "Profile",
        //       icon: SvgIcon(IconsAssets.profile)),
        // ],

        );
  }
}

class BottomNavText extends StatelessWidget {
  const BottomNavText({
    super.key,
    required this.tittle,
    required this.icon,
    required this.currentIndex,
    this.onTap,
  });

  final String tittle;
  final String icon;
  final int currentIndex;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 50,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgIcon(icon),
              Text(
                tittle,
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
