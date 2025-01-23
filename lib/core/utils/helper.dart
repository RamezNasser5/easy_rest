import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:go_router/go_router.dart';

abstract class Helper {
  static void navigationToOverView(context) {
    Future.delayed(const Duration(seconds: 3),
        () => GoRouter.of(context).go(AppRouting.kOverViewRout));
  }
}
