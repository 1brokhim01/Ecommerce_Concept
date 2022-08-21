import 'package:ecommerce/core/components/my_text_style_comp.dart';
import 'package:ecommerce/core/constants/colors_const.dart';
import 'package:ecommerce/views/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreensView extends StatelessWidget {
  const SplashScreensView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenCubit(context),
      child: Scaffold(
        backgroundColor: ColorsConst.color010035,
        body: BlocConsumer<SplashScreenCubit, SplashScreenState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.r),
                        child: CircleAvatar(
                          radius: 66.r,
                          backgroundColor: ColorsConst.colorFF6E4E,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 132.h,
                        width: MediaQuery.of(context).size.width * 0.7.w,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Ecommerce\nConcept",
                            style: MyTextStyleComp.textStyle(
                              size: 30,
                              fontW: FontWeight.w800,
                              color: ColorsConst.colorWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
