import 'package:flutter/material.dart';

import '../../../core/components/product_tile_square.dart';
import '../../../core/components/title_and_action_button.dart';
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
        TitleAndActionButton(
          title: title,
          onTap: () => Navigator.pushNamed(context, AppRoutes.newItems),
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
