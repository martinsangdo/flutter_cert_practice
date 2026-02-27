import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_data.dart';
import 'data/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  late PageController controller;
  List<OnboardingModel> items = OnboardingData.items;

  onPageChange(int value) {
    currentPage = value;
    setState(() {});
  }

  _gotoNextPage() {
    if (currentPage < items.length - 1) {
      controller.nextPage(
        duration: AppDefaults.duration,
        curve: Curves.ease,
      );
    } else {
      _gotoLoginSignUp();
    }
  }

  _gotoLoginSignUp() {
    Navigator.pushNamed(context, AppRoutes.introLogin);
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
    _autoNavigate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _autoNavigate() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.pushNamed(context, AppRoutes.entryPoint);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: onPageChange,
                itemCount: items.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return OnboardingView(
                    data: items[index],
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
