import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:route_task/features/home/presentation/bloc/home_cubit.dart';
import 'package:route_task/features/home/presentation/widgets/product_item.dart';

class ProductsGridView extends StatefulWidget {
  const ProductsGridView({Key? key}) : super(key: key);

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return AnimationLimiter(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cubit.productsDetails?.products?.length ?? 0,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .80,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) =>
            AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 2,
                duration: const Duration(milliseconds: 1500),
                // delay: const Duration(milliseconds: 700),
                child: InkWell(
                  onTap: () {},
                  child: SlideAnimation(
                    child: FadeInAnimation(
                      child: ProductItem(
                        index: index,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
