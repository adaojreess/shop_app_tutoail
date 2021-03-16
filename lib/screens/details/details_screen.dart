import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: Body(product: product),
    );
  }
}
