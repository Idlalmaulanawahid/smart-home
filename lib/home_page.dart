import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home/common/app-colors.dart';
import 'package:smart_home/common/app-font.dart';
import 'package:smart_home/common/app-icons.dart';
import 'package:smart_home/common/app-images.dart';
import 'package:smart_home/widget/toggle_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;

    Widget header() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.whiteColor,
                        child: const CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(
                            'assets/images/avatar-circle.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Smart Home",
                          style: whiteTextStyle.copyWith(
                            fontSize: size12,
                          ),
                        ),
                        Text(
                          "Murtadha Hamid",
                          style: whiteTextStyle.copyWith(
                            fontSize: size14,
                            fontWeight: bold700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  size: 35,
                  Icons.notifications,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.mainBaseColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: width,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: header(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120, bottom: 20),
              width: double.infinity,
              // height: 1000,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Room',
                          style: primaryTextStyle.copyWith(
                            fontSize: size16,
                            fontWeight: bold700,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: AppColors.mainBaseColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: const Icon(
                            size: 20,
                            Icons.add,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    height: 170.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.mainBaseColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            border: Border.all(
                              color: AppColors.mainBaseColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.bedRoom,
                                  height: 50,
                                  color: AppColors.mainBaseColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Bedroom',
                                style: whiteTextStyle.copyWith(
                                  fontSize: size16,
                                  fontWeight: bold700,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                '3 Device',
                                style: whiteTextStyle.copyWith(
                                  fontSize: size14,
                                  fontWeight: bold500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 160,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            border: Border.all(
                              color: AppColors.mainBaseColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: AppColors.mainBaseColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.livingRoom,
                                  height: 50,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Living Room',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size16,
                                  fontWeight: bold700,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                '4 Device',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size14,
                                  fontWeight: bold500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            border: Border.all(
                              color: AppColors.mainBaseColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: AppColors.mainBaseColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.bathRooom,
                                  height: 50,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Bathroom ',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size16,
                                  fontWeight: bold700,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                '4 Device',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size14,
                                  fontWeight: bold500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 160,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            border: Border.all(
                              color: AppColors.mainBaseColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.mainBaseColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.diningRoom,
                                  height: 50,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Dining Room',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size16,
                                  fontWeight: bold700,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                '2 Device',
                                style: primaryTextStyle.copyWith(
                                  fontSize: size14,
                                  fontWeight: bold500,
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10.0,
                              // ),
                              // AnimatedToggleSwitch(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Device',
                          style: primaryTextStyle.copyWith(
                            fontSize: size16,
                            fontWeight: bold700,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: AppColors.mainBaseColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: const Icon(
                            size: 20,
                            Icons.add,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Container(
                    width: width,
                    height: 160,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: AppColors.mainBaseColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              AppIcons.lamp,
                              height: 50,
                              color: AppColors.mainBaseColor,
                            ),
                            AnimatedToggleSwitch()
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lighting',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Philips Light',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size14,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '20w',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(AppImages.energy),
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Container(
                    width: width,
                    height: 160,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: AppColors.mainBaseColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              AppIcons.tv,
                              height: 35,
                              color: AppColors.mainBaseColor,
                            ),
                            AnimatedToggleSwitch()
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Smart TV',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Panasonic',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size14,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '75w',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(AppImages.energy),
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Container(
                    width: width,
                    height: 160,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: AppColors.mainBaseColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              AppIcons.music,
                              height: 40,
                              color: AppColors.mainBaseColor,
                            ),
                            AnimatedToggleSwitch()
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lighting',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Philips Light',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size14,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '15w',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: size16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(AppImages.energy),
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
