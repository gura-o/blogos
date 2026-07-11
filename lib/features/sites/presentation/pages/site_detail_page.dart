import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/site_providers.dart';

class SiteDetailPage extends ConsumerWidget {
  const SiteDetailPage({
    super.key,
    required this.siteId,
  });

  final String siteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final site = ref.watch(siteByIdProvider(siteId));

    if (site == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('サイト詳細'),
        ),
        body: const Center(
          child: Text('サイトが見つかりません'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('サイト詳細'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            site.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            site.url,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () {},
            child: const Text('サイト診断'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () {},
            child: const Text('AI記事を作成'),
          ),
          const SizedBox(height: 32),
          const Center(
            child: Text('診断結果はまだありません'),
          ),
        ],
      ),
    );
  }
}
