import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class ItemFormScreen extends StatelessWidget {
  final ClothingItem? item;
  const ItemFormScreen({super.key, this.item});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(item == null ? 'Добавление вещи' : 'Редактирование вещи')),
    body: ListView(padding: const EdgeInsets.all(16), children: [
      Card(child: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
        Icon(Icons.add_photo_alternate_outlined, size: 64, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 8),
        TextButton(onPressed: () {}, child: const Text('Добавить фото')),
      ]))),
      const SizedBox(height: 16),
      TextField(decoration: InputDecoration(labelText: 'Название', hintText: item?.name ?? 'Например, льняная рубашка', border: const OutlineInputBorder())),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero,
        label: const Text('Категория'), initialSelection: item?.category ?? 'Верх',
        dropdownMenuEntries: [for (final value in ['Верх', 'Низ', 'Верхняя одежда', 'Обувь', 'Аксессуары']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero,
        label: const Text('Цвет'), initialSelection: item?.color ?? 'Молочный',
        dropdownMenuEntries: [for (final value in ['Молочный', 'Индиго', 'Серый', 'Коричневый', 'Белый', 'Бежевый', 'Песочный', 'Чёрный']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero,
        label: const Text('Сезон'), initialSelection: item?.season ?? 'Лето',
        dropdownMenuEntries: [for (final value in ['Лето', 'Осень', 'Зима', 'Весна', 'Весна / осень', 'Всесезонный']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 16),
      DropdownMenu<String>(
        expandedInsets: EdgeInsets.zero,
        label: const Text('Стиль'), initialSelection: item?.style ?? 'Повседневный',
        dropdownMenuEntries: [for (final value in ['Повседневный', 'Деловой', 'Классический', 'Спортивный']) DropdownMenuEntry(value: value, label: value)],
      ),
      const SizedBox(height: 24),
      FilledButton(onPressed: () {}, child: const Text('Сохранить')),
    ]),
  );
}
