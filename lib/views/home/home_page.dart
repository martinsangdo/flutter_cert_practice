import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/app_icons.dart';

import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/ad_space.dart';
import 'components/horizontal_list.dart';
import 'components/popular_packs.dart';
import '../../core/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
    State<HomePage> createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    debugPrint(glb_certification_list_metainfo.toString());
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
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.search);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F6F3),
                      shape: const CircleBorder(),
                    ),
                    child: SvgPicture.asset(AppIcons.search),
                  ),
                ),
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppDefaults.padding),
              sliver: SliverToBoxAdapter(
                child: HorizontalList(title: "PROJECT MANAGEMENT", items: Dummy.products),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
