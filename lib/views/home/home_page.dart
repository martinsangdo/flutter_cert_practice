import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/app_icons.dart';

import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/ad_space.dart';
import 'components/horizontal_list.dart';
import 'components/popular_packs.dart';
import '../../core/constants/constants.dart';
import '../../core/models/certification_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
    State<HomePage> createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> {
  final Map<String, List<CertificationModel>> _grouped_certifications = {};  //key: category, value: list of certifications

  void grouping_certifications_2_categories() {
    for (var item in glb_certification_list_metainfo) {
      String categoryName = CERTIFICATION_CATEGORIES[item['c']];
      _grouped_certifications
        .putIfAbsent(categoryName, () => [])
        .add(CertificationModel.fromJson(item));
    }
  }

  @override
  void initState() {
    super.initState();
    grouping_certifications_2_categories();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              title: SvgPicture.asset(
                "assets/images/app_logo.svg",
                height: 32,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final category = CERTIFICATION_CATEGORIES[index];

                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppDefaults.padding,
                    ),
                    child: HorizontalList(
                        title: category,
                        items: _grouped_certifications[category] ?? [],
                      ),
                  );
                },
                childCount: CERTIFICATION_CATEGORIES.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
