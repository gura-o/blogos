import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/site.dart';

final sitesProvider = Provider<List<Site>>((ref) {
  return const [
    Site(
      id: 'myfinmemo',
      name: 'myfinmemo',
      url: 'https://myfinmemo.com',
    ),
    Site(
      id: 'sample-blog',
      name: 'サンプルブログ',
      url: 'https://example.com',
    ),
  ];
});

final siteByIdProvider = Provider.family<Site?, String>((ref, siteId) {
  final sites = ref.watch(sitesProvider);

  for (final site in sites) {
    if (site.id == siteId) {
      return site;
    }
  }

  return null;
});
