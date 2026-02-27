import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_data.dart';
import 'data/onboarding_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingModel> items = OnboardingData.items;

  void fetchMetadata() async {
      final response = await http.Client().get(Uri.parse(CERTIFICATION_LIST_PATH));
      if (response.statusCode != 200){
        debugPrint('Cannot get metadata from cloud');
        //todo: display something or check if we had metadata in sqlite
      } else {
        final metadataObjFromCloud = jsonDecode(response.body);
        debugPrint(metadataObjFromCloud.toString());
      }
    }

  @override
  void initState() {
    super.initState();
    fetchMetadata();
    _autoNavigate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _autoNavigate() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(context, AppRoutes.entryPoint,
            (route) => false); // remove everything from stack so that next screen is not accessible
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
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return OnboardingView(
                    data: items[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
