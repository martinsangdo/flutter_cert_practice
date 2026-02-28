import 'package:flutter/material.dart';

import '../../../core/components/product_tile_square.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/models/certification_model.dart';

class HorizontalList extends StatelessWidget {
  final String title;
  final List<CertificationModel> items;

  const HorizontalList({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title + " ("+items.length.toString()+")",  
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
          textAlign: TextAlign.left,
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              items.length,
              (index) => ProductTileSquare(data: items[index]),
            ),
          ),
        ),
      ],
    );
  }
}
