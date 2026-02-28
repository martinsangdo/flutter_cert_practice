import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';
import '../../core/models/certification_model.dart';

//list of certs by category
class CategoryProductPage extends StatelessWidget {
  final String title;
  List<CertificationModel> items = [];

  CategoryProductPage({super.key, required this.title}) {
    List<String> symbols = CATEGORY_GROUPS[title]!;
    for (var symbol in symbols) {
      items.add(CertificationModel.fromJson(glb_certification_list_metainfo.firstWhere((element) => element['s'] == symbol)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const AppBackButton(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductTileSquare(
            data: items[index],
          );
        },
      ),
    );
  }
}
