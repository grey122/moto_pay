import 'package:flutter/material.dart';
import 'package:moto_pay/constants/color_selection.dart';
import 'package:moto_pay/constants/icon_assets.dart';
import 'package:moto_pay/constants/image_assets.dart';
import 'package:moto_pay/constants/utils.dart';
import 'package:moto_pay/features/shared_widgets/svgs.dart';

import '../../shared_widgets/fl_charts_one.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ColorsConst.backgroundColor,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Headerfirst(),
                SizedBox(
                  height: 20,
                ),
                SearchBody(),
                SizedBox(
                  height: 20,
                ),
                BodyContainer(),
                SizedBox(
                  height: 20,
                ),
                RowMoneyWidget(),
                BarChartSample2(),
                SBarChat()
              ],
            ),
          ),
        ));
  }
}

class SBarChat extends StatelessWidget {
  const SBarChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        IncomingContainer(
          mainColor: Color(0xFF2999F4),
          text: "Incoming",
        ),
        Spacer(),
        IncomingContainer(
          mainColor: Color(0xFF89AFF0),
          text: "Outgoing",
        ),
      ],
    );
  }
}

class RowMoneyWidget extends StatelessWidget {
  const RowMoneyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SendMoneyContainer(
          mainColor: Color(0xFF91B8F8),
          secoundColor: Color(0xFF6E9CEC),
          text: "Send Money",
        ),
        SendMoneyContainer(
          mainColor: Color(0xFFF9DD91),
          secoundColor: Color(0xFFE8B16C),
          text: "Recieve Money",
        ),
        SendMoneyContainer(
          mainColor: Color(0xFFE99A86),
          secoundColor: Color(0xFFE07C67),
          text: "Pay bills",
        ),
      ],
    );
  }
}

class SendMoneyContainer extends StatelessWidget {
  const SendMoneyContainer({
    super.key,
    required this.mainColor,
    required this.secoundColor,
    required this.text,
  });

  final Color mainColor;
  final Color secoundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 106,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              color: secoundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(child: SvgIcon(IconsAssets.money)),
          ),
          Expanded(
            child: Text(
              text,
              style: textTheme(context).titleMedium?.copyWith(
                  color: ColorsConst.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class IncomingContainer extends StatelessWidget {
  const IncomingContainer({
    super.key,
    required this.mainColor,
    required this.text,
  });

  final Color mainColor;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 167,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textTheme(context).titleMedium?.copyWith(
                color: ColorsConst.white,
                fontWeight: FontWeight.w400,
                fontSize: 10),
          ),
          Text(
            "N84,000.00",
            style: textTheme(context).titleMedium?.copyWith(
                color: ColorsConst.white,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.fromLTRB(18, 15, 10, 10),
      width: width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.withOpacity(0.7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Account Balance",
                style: textTheme(context).titleMedium?.copyWith(
                    color: ColorsConst.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "\$100,000.00",
                style: textTheme(context).titleMedium?.copyWith(
                    color: ColorsConst.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )
            ],
          ),
          const Spacer(),
          const LogoSmall()
        ],
      ),
    );
  }
}

class LogoSmall extends StatelessWidget {
  const LogoSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      height: 33,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F1FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const SvgIcon(IconsAssets.logo),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Points: 100,00,000",
            style: textTheme(context).titleMedium?.copyWith(
                color: ColorsConst.primary,
                fontWeight: FontWeight.w500,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 47,
      width: width(context),
      decoration: BoxDecoration(
        color: ColorsConst.blackFour,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: ColorsConst.blackFive),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Search by name or phone number",
            style: textTheme(context).bodySmall,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class Headerfirst extends StatelessWidget {
  const Headerfirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: width(context),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 39,
          width: 39,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImageAssets.imageOne),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning Emmanuel",
              style: textTheme(context).titleMedium?.copyWith(
                  color: ColorsConst.blackTwo, fontWeight: FontWeight.w500),
            ),
            Text("Your QR Code",
                style: textTheme(context).titleMedium?.copyWith(
                    color: ColorsConst.blackThree,
                    fontWeight: FontWeight.w500)),
          ],
        )
      ]),
    );
  }
}
