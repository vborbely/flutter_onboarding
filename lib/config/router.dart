import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_onboarding/pages/main_page.dart';
import 'package:flutter_onboarding/pages/onboarding_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: OnBoardingPage, initial: true),
  MaterialRoute(page: MainPage),
])

class $CustomRouter {}