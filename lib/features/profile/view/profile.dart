import 'package:flutter/material.dart';
import 'package:moto_pay/constants/image_assets.dart';
import 'package:moto_pay/constants/utils.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 257,
            width: width(context),
            decoration: const BoxDecoration(
              color: Color(0xFF2390FA),
              image: DecorationImage(
                image: AssetImage(ImageAssets.mask),
              ),
            ),
            child: Column(
              children: const [
                // Image.asset(ImageAssets.imageOne),
              ],
            ),
          )
        ],
      )),
    );
  }
}
