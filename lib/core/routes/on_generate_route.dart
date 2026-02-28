import 'package:flutter/cupertino.dart';

import '../../views/entrypoint/entrypoint_ui.dart';
import '../../views/home/product_details_page.dart';
import '../../views/menu/category_page.dart';
import '../../views/onboarding/onboarding_page.dart';
import 'app_routes.dart';
import 'unknown_page.dart';
import '../../core/models/certification_model.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case AppRoutes.onboarding:
        return CupertinoPageRoute(builder: (_) => const OnboardingPage());

      case AppRoutes.entryPoint:
        return CupertinoPageRoute(builder: (_) => const EntryPointUI());

      case AppRoutes.categoryDetails:
        final args = settings.arguments as Map<String, String>?;
        final title = args?['title'] ?? ''; 
        return CupertinoPageRoute(builder: (_) => CategoryProductPage(title: title));

      case AppRoutes.productDetails:
        final args = settings.arguments as CertificationModel;
        return CupertinoPageRoute(builder: (_) => ProductDetailsPage(data: args));

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
