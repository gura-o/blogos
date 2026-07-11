import 'package:go_router/go_router.dart';

import '../features/sites/presentation/pages/site_create_page.dart';
import '../features/sites/presentation/pages/site_detail_page.dart';
import '../features/sites/presentation/pages/site_list_page.dart';

final appRouter = GoRouter(
  initialLocation: '/sites',
  routes: [
    GoRoute(
      path: '/sites',
      builder: (context, state) => const SiteListPage(),
      routes: [
        GoRoute(
          path: 'new',
          builder: (context, state) => const SiteCreatePage(),
        ),
        GoRoute(
          path: ':siteId',
          builder: (context, state) {
            final siteId = state.pathParameters['siteId']!;
            return SiteDetailPage(siteId: siteId);
          },
        ),
      ],
    ),
  ],
);
