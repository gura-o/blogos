import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

class BlogOsApp extends StatelessWidget {
  const BlogOsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BlogOS',
      theme: buildAppTheme(),
      routerConfig: appRouter,
    );
  }
}
