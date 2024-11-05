import 'package:demo_ujjval/services/data_controller.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/views/home/widgets/event_card.dart';
import 'package:demo_ujjval/views/home/widgets/filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.r),
          child: Column(
            children: [
              const CustomAppBar(),
              SizedBox(height: 10.h,),
              const Center(child: FilterRow()),
              SizedBox(height: 10.h,),
              FutureBuilder(future: DataController.instance.getData(), builder: (context, snapshot) {
                while(!snapshot.hasData || snapshot.requireData.isEmpty || (snapshot.connectionState == ConnectionState.waiting)) {
                  return const Center(child: CircularProgressIndicator(color: AppColors.main,),);
                }
                return Flexible(
                    child: ListView.builder(
                      itemBuilder: (context, index) => EventCard(data: snapshot.requireData[index]),
                      itemCount: snapshot.requireData.length,
                    ));
              },)
            ],
          ),
        ),
      ),
    );
  }
}





