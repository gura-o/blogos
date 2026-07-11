import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/site_providers.dart';

class SiteListPage extends ConsumerWidget {
  const SiteListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sites = ref.watch(sitesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BlogOS'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            '登録サイト',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          for (final site in sites)
            Card(
              child: ListTile(
                title: Text(site.name),
                subtitle: Text(site.url),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.go('/sites/${site.id}'),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/sites/new'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
