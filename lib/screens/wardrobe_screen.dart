import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/clothing_card.dart';
import 'item_details_screen.dart';
import 'item_form_screen.dart';

class WardrobeScreen extends StatelessWidget {
  const WardrobeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Мой гардероб')),
    floatingActionButton: FloatingActionButton(
      tooltip: 'Добавить вещь',
      onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const ItemFormScreen())),
      child: const Icon(Icons.add),
    ),
    body: ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 88),
      itemCount: mockClothes.length + 1,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const TextField(decoration: InputDecoration(labelText: 'Поиск вещей', prefixIcon: Icon(Icons.search), border: OutlineInputBorder())),
            const SizedBox(height: 12),
            Wrap(spacing: 8, runSpacing: 4, children: [
              for (final category in ['Все', 'Верх', 'Низ', 'Верхняя одежда', 'Обувь'])
                FilterChip(label: Text(category), selected: category == 'Все', onSelected: (_) {}),
            ]),
            const SizedBox(height: 8),
            Text('${mockClothes.length} вещей', style: Theme.of(context).textTheme.titleMedium),
          ]);
        }
        final item = mockClothes[index - 1];
        return ClothingCard(item: item, onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => ItemDetailsScreen(item: item))));
      },
    ),
  );
}
