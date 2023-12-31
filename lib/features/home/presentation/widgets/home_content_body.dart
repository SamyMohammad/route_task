import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:route_task/core/utils/assets_manager.dart';
import 'package:route_task/core/utils/color_manager.dart';
import 'package:route_task/core/utils/strings_manager.dart';
import 'package:route_task/core/utils/values_manager.dart';
import 'package:route_task/features/home/presentation/bloc/home_cubit.dart';
import 'package:route_task/features/home/presentation/widgets/paged_jobs_list_view.dart';

import '../../../../core/components/default_textfield.dart';

class HomeContentBody extends StatefulWidget {
  const HomeContentBody({super.key, required this.state});
  final HomeState state;
  @override
  State<HomeContentBody> createState() => _HomeContentBodyState();
}

class _HomeContentBodyState extends State<HomeContentBody> {
  @override
  Widget build(BuildContext context) {
    if (widget.state is GetProductsSuccessState) {
      return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20, vertical: AppPadding.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageAssets.routeLogo),
            Row(
              children: [
                Expanded(
                  child: DefaultTextField(
                      isHidden: false,
                      hintText: AppStrings.hintText,
                      prefix: Icons.search),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: ColorManager.primary,
                  size: 35,
                ),
              ],
            ),
            const Expanded(child: ProductsGridView()),
          ],
        ),
      );
    } else {
      return Center(
        child: SizedBox(
          height: 150.h,
          width: 150.w,
          child: Lottie.asset(JsonAssets.loading, frameRate: FrameRate.max),
        ),
      );
    }
  }
}
