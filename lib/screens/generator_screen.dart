import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/detail_row.dart';
import 'outfit_result_screen.dart';

class GeneratorScreen extends StatelessWidget {
  const GeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Генератор образа')),
    body: ListView(padding: const EdgeInsets.all(16), children: [
      Text('Что надеть сегодня?', style: Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height: 8),
      const Text('Выберите повод и сезон для примера образа.'),
      const SizedBox(height: 16),
      const Card(child: Column(children: [
        DetailRow(label: 'Город', value: 'Кишинёв'),
        DetailRow(label: 'Погода', value: '+24 °C · ясно'),
        DetailRow(label: 'Источник', value: 'Демонстрационные данные'),
      ])),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero, label: const Text('Повод'), initialSelection: 'Прогулка',
        dropdownMenuEntries: [for (final value in ['Прогулка', 'Работа', 'Ужин', 'Встреча с друзьями', 'Путешествие']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero, label: const Text('Сезон'), initialSelection: 'Лето',
        dropdownMenuEntries: [for (final value in ['Лето', 'Осень', 'Зима', 'Весна']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 16),
      SwitchListTile(contentPadding: EdgeInsets.zero, title: const Text('Учитывать погоду'), subtitle: const Text('Статический макет'), value: true, onChanged: (_) {}),
      const SizedBox(height: 16),
      FilledButton.icon(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => OutfitResultScreen(outfit: mockOutfits.first))),
        icon: const Icon(Icons.auto_awesome), label: const Text('Подобрать образ'),
      ),
    ]),
  );
}
