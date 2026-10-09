import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/detail_row.dart';
import 'item_form_screen.dart';

class ItemDetailsScreen extends StatelessWidget {
  final ClothingItem item;
  const ItemDetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Карточка вещи')),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Card(child: Padding(padding: const EdgeInsets.all(40), child: Icon(Icons.checkroom, size: 112, color: Theme.of(context).colorScheme.primary))),
        const SizedBox(height: 16),
        Text(item.name, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 16),
        Card(child: Column(children: [
          DetailRow(label: 'Категория', value: item.category),
          DetailRow(label: 'Цвет', value: item.color),
          DetailRow(label: 'Сезон', value: item.season),
          DetailRow(label: 'Стиль', value: item.style),
        ])),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => ItemFormScreen(item: item))),
          icon: const Icon(Icons.edit_outlined), label: const Text('Редактировать'),
        ),
      ]),
    ),
  );
}
