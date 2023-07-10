import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/utils/color_manager.dart';
import 'package:route_task/core/utils/font_manager.dart';
import 'package:route_task/core/utils/styles_manager.dart';

import '../bloc/home_cubit.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final product = context.read<HomeCubit>().productsDetails?.products?[index];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.primary),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      // padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.network(
                      height: 90,
                      fit: BoxFit.cover,
                      product?.thumbnail ?? '',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      product?.title ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: getRegularStyle(
                          color: Colors.black87, fontSize: FontSize.s14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product?.description ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: getRegularStyle(
                          color: Colors.black87, fontSize: FontSize.s14),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'EGP ${product?.price}',
                          style: getRegularStyle(
                              color: Colors.black87, fontSize: FontSize.s14),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('${product?.discountPercentage} EGP',
                            style: const TextStyle(
                                fontSize: FontSize.s12,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Review (${product?.rating}) ',
                          style: getRegularStyle(
                              color: Colors.black87, fontSize: FontSize.s14),
                        ),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellowAccent,
                        ),
                        const Spacer(),
                        Icon(
                          size: 30,
                          Icons.add_circle_rounded,
                          color: ColorManager.primary,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          buildFavouriteButton(),
        ],
      ),
    );
    // : const ShimmerWidget.rectangle(height: 120);
  }

  Positioned buildFavouriteButton() {
    return Positioned(
      right: 10,
      top: 10,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 15,
          child:
              Icon(Icons.favorite_outline_rounded, color: ColorManager.primary),
        ),
      ),
    );
  }
}
