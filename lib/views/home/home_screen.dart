import 'package:demo_ujjval/services/data_controller.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/tools.dart';
import 'package:demo_ujjval/views/event/event_screen.dart';
import 'package:demo_ujjval/views/home/widgets/custom_bottom_bar.dart';
import 'package:demo_ujjval/views/home/widgets/event_card.dart';
import 'package:demo_ujjval/views/home/widgets/filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    DataController.instance.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Tools.getHeight(context) - kBottomNavigationBarHeight.h,
          child: Padding(
            padding: EdgeInsets.all(18.r),
            child: Column(
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: 10.h,
                ),
                const Center(child: FilterRow()),
                SizedBox(
                  height: 10.h,
                ),
                GetBuilder<DataController>(
                  builder: (controller) {
                    if (controller.myEvents.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.main,
                        ),
                      );
                    }
                    return Flexible(
                        child: ListView.builder(
                      itemBuilder: (context, index) => InkWell(
                          onTap: () => Get.to(() => EventScreen(event: controller.myEvents[index])),
                          child: EventCard(data: controller.myEvents[index])),
                      itemCount: controller.myEvents.length,
                    ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.main,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: AppColors.white,
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
