import 'package:flutter/material.dart';
import 'package:route_task/core/utils/assets_manager.dart';
import 'package:route_task/core/utils/color_manager.dart';
import 'package:route_task/core/utils/font_manager.dart';
import 'package:route_task/core/utils/styles_manager.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    // final product = HomeCubit.get(context).products?[index] ?? GetProductResponse();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(
                    ImageAssets.productPic,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      'Nike air jordon',
                      style: getRegularStyle(
                          color: Colors.black87, fontSize: FontSize.s18),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Nike shoes flexable for women',
                      overflow: TextOverflow.ellipsis,
                      style: getRegularStyle(
                          color: Colors.black87, fontSize: FontSize.s18),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'EGP 1,200',
                          style: getRegularStyle(
                              color: Colors.black87, fontSize: FontSize.s14),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text('2000 EGP',
                            style: TextStyle(
                                fontSize: FontSize.s12,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Review (4.6) ',
                          style: getRegularStyle(
                              color: Colors.black87, fontSize: FontSize.s14),
                        ),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellowAccent,
                        ),
                        const Spacer(),
                        Expanded(
                            child: Icon(
                          size: 27,
                          Icons.add_circle_rounded,
                          color: ColorManager.primary,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 10,
            top: 10,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 15,
              child: Icon(Icons.favorite_outline_rounded,
                  color: ColorManager.primary),
            ),
          ),
        ],
      ),
    );
    // : const ShimmerWidget.rectangle(height: 120);
  }
}
