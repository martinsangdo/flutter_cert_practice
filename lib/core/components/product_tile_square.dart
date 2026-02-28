import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../routes/app_routes.dart';
import 'network_image.dart';
import '../models/certification_model.dart';

class ProductTileSquare extends StatelessWidget {
  const ProductTileSquare({
    super.key,
    required this.data,
  });

  final CertificationModel data;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleMedium!;
    // If height is null, Flutter assumes ~1.2
    final lineHeight =
        (textStyle.fontSize ?? 14) * (textStyle.height ?? 1.2);
  
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding / 2),
      child: Material(
        borderRadius: AppDefaults.borderRadius,
        color: AppColors.scaffoldBackground,
        child: InkWell(
          borderRadius: AppDefaults.borderRadius,
          onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails, arguments: data),
          child: Container(
            width: 176,
            height: 296,
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: AppColors.placeholder),
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(
                      data.cover,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: lineHeight * 4, // 👈 EXACT 4 lines
                  child: Text(
                    data.name,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
