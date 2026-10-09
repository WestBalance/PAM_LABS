import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class OutfitCard extends StatelessWidget {
  final Outfit outfit;
  final VoidCallback onTap;
  const OutfitCard({super.key, required this.outfit, required this.onTap});

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      leading: Icon(Icons.auto_awesome_outlined, color: Theme.of(context).colorScheme.primary),
      title: Text(outfit.name),
      subtitle: Text('${outfit.occasion} · ${outfit.season}\n${outfit.weather} · ${outfit.items.length} вещи'),
      isThreeLine: true,
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    ),
  );
}
