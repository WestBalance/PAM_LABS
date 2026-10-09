class ClothingItem {
  final String name;
  final String category;
  final String color;
  final String season;
  final String style;
  const ClothingItem(
    this.name,
    this.category,
    this.color,
    this.season,
    this.style,
  );
}

const mockClothes = [
  ClothingItem(
    'Льняная рубашка свободного кроя',
    'Верх',
    'Молочный',
    'Лето',
    'Повседневный',
  ),
  ClothingItem(
    'Прямые джинсы с высокой посадкой',
    'Низ',
    'Индиго',
    'Всесезонный',
    'Повседневный',
  ),
  ClothingItem(
    'Шерстяной жакет в мелкую клетку',
    'Верхняя одежда',
    'Серый',
    'Осень',
    'Деловой',
  ),
  ClothingItem(
    'Кожаные лоферы на плоской подошве',
    'Обувь',
    'Коричневый',
    'Весна / осень',
    'Деловой',
  ),
  ClothingItem(
    'Хлопковая футболка с круглым вырезом',
    'Верх',
    'Белый',
    'Всесезонный',
    'Повседневный',
  ),
  ClothingItem(
    'Широкие брюки со стрелками',
    'Низ',
    'Бежевый',
    'Весна / осень',
    'Деловой',
  ),
  ClothingItem(
    'Тренч с поясом и отложным воротником',
    'Верхняя одежда',
    'Песочный',
    'Весна / осень',
    'Классический',
  ),
  ClothingItem('Кеды из текстиля', 'Обувь', 'Белый', 'Лето', 'Повседневный'),
];

class Outfit {
  final String name;
  final String occasion;
  final String season;
  final String weather;
  final List<ClothingItem> items;
  const Outfit(this.name, this.occasion, this.season, this.weather, this.items);
}

final mockOutfits = [
  Outfit('Утро в городе', 'Прогулка', 'Лето', '+24 °C · ясно', [
    mockClothes[0],
    mockClothes[1],
    mockClothes[7],
  ]),
  Outfit('Спокойный офисный день', 'Работа', 'Осень', '+16 °C · облачно', [
    mockClothes[2],
    mockClothes[5],
    mockClothes[3],
  ]),
  Outfit('Кофе на террасе', 'Встреча с друзьями', 'Лето', '+22 °C · ясно', [
    mockClothes[0],
    mockClothes[5],
    mockClothes[7],
  ]),
  Outfit('Выходные без спешки', 'Прогулка', 'Весна', '+19 °C · облачно', [
    mockClothes[4],
    mockClothes[1],
    mockClothes[7],
  ]),
  Outfit('Вечерняя встреча в центре', 'Ужин', 'Осень', '+14 °C · облачно', [
    mockClothes[2],
    mockClothes[1],
    mockClothes[3],
  ]),
  Outfit('Деловая встреча', 'Работа', 'Весна', '+17 °C · ясно', [
    mockClothes[0],
    mockClothes[5],
    mockClothes[3],
  ]),
  Outfit('Прогулка по набережной', 'Прогулка', 'Осень', '+15 °C · ветер', [
    mockClothes[6],
    mockClothes[1],
    mockClothes[3],
  ]),
  Outfit('Поездка на выходные', 'Путешествие', 'Весна', '+18 °C · облачно', [
    mockClothes[6],
    mockClothes[4],
    mockClothes[1],
    mockClothes[7],
  ]),
];
