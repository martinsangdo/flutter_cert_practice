import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/AWS_SAP.png',
            label: 'AWS',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/AZ_AI_102.png',
            label: 'Azure',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/COMP_A_PLUS.png',
            label: 'CompTIA',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/DTB_DEA.png',
            label: 'Databricks',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/GCP_PCA.png',
            label: 'GCP',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/ISC_CISSP.png',
            label: 'ISACA',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/NCA_GENL.png',
            label: 'NVIDIA',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/PMP.png',
            label: 'PMI',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/PRINCE_AF.png',
            label: 'PRINCE2',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/PSM_1.png',
            label: 'Scrum',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/SERV_CAD.png',
            label: 'ServiceNow',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/SNOW_SAA.png',
            label: 'Snowflake',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/TERRA_A_004.png',
            label: 'Terraform',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://martinsangdo.github.io/public/img/cert_logo/SAFE_ARCH.png',
            label: 'Others',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          )
        ],
      ),
    );
  }
}
