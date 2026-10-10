import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/clothing_card.dart';
import '../widgets/detail_row.dart';
import 'item_details_screen.dart';

class OutfitResultScreen extends StatelessWidget {
  final Outfit outfit;
  const OutfitResultScreen({super.key, required this.outfit});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Результат подбора')),
    body: ListView.separated(
      padding: const EdgeInsets.all(16), itemCount: outfit.items.length + 2,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(outfit.name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            Card(child: Column(children: [
              DetailRow(label: 'Повод', value: outfit.occasion),
              DetailRow(label: 'Сезон', value: outfit.season),
              DetailRow(label: 'Погода', value: outfit.weather),
            ])),
            const SizedBox(height: 12),
            const Text('Готовый пример: спокойная палитра и сочетающиеся силуэты. Подбор пока не выполняется.'),
            const SizedBox(height: 16),
            Text('Вещи в образе', style: Theme.of(context).textTheme.titleLarge),
          ]);
        }
        if (index == outfit.items.length + 1) {
          return Padding(padding: const EdgeInsets.only(top: 16), child: FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.bookmark_outline), label: const Text('Сохранить образ')));
        }
        final item = outfit.items[index - 1];
        return ClothingCard(item: item, onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => ItemDetailsScreen(item: item))));
      },
    ),
  );
}
