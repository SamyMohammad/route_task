import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:route_task/features/home/presentation/widgets/product_item.dart';

class ProductsGridView extends StatefulWidget {
  const ProductsGridView({Key? key}) : super(key: key);

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    // final products = HomeCubit.get(context).products;
    return AnimationLimiter(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
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
                  onTap: () {
                    // Navigator.of(
                    //   context,
                    //   rootNavigator: true,
                    // ).pushNamed(Routes.productDetailsRoute,
                    //     arguments: products?[index]);
                  },
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
