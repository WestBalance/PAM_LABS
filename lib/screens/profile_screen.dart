import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/detail_row.dart';
import '../widgets/outfit_card.dart';
import 'outfit_result_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Профиль')),
    body: ListView.separated(
      padding: const EdgeInsets.all(16), itemCount: mockOutfits.length + 1,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        if (index == 0) {
          final scheme = Theme.of(context).colorScheme;
          return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Center(child: CircleAvatar(radius: 36, backgroundColor: scheme.primaryContainer, foregroundColor: scheme.onPrimaryContainer, child: const Text('АС'))),
            const SizedBox(height: 12),
            Text('Анна Санду', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            Card(child: Column(children: [
              const DetailRow(label: 'E-mail', value: 'anna.sandu@example.com'),
              const DetailRow(label: 'Город', value: 'Кишинёв'),
              const DetailRow(label: 'Любимый стиль', value: 'Повседневный'),
              DetailRow(label: 'Вещей в гардеробе', value: '${mockClothes.length}'),
              DetailRow(label: 'Сохранённых образов', value: '${mockOutfits.length}'),
            ])),
            const SizedBox(height: 16),
            OutlinedButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Выйти')),
            const SizedBox(height: 16),
            Text('Мои образы', style: Theme.of(context).textTheme.titleLarge),
          ]);
        }
        final outfit = mockOutfits[index - 1];
        return OutfitCard(outfit: outfit, onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => OutfitResultScreen(outfit: outfit))));
      },
    ),
  );
}
