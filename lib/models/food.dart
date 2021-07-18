part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props => [id, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          'https://image-cdn.medkomtek.com/l5EBFWIktelHL9WXJd1164CtxUI=/640x480/smart/klikdokter-media-buckets/medias/2321296/original/049998000_1605579809-Waspada_-Inilah-Deretan-Penyakit-Akibat-Junk-Food-shutterstock_537665956.jpg',
      name: 'Makanan Saya 1',
      description: 'Ini makanan saya asli sangat segar dan sangan enak cuyy',
      ingredients: 'Kurma, Buah, Sayur, Tomat',
      price: 1500000,
      rate: 4.3,
      types: [FoodType.new_food, FoodType.popular, FoodType.recommended]),
  Food(
      id: 1,
      picturePath:
          'https://image-cdn.medkomtek.com/l5EBFWIktelHL9WXJd1164CtxUI=/640x480/smart/klikdokter-media-buckets/medias/2321296/original/049998000_1605579809-Waspada_-Inilah-Deretan-Penyakit-Akibat-Junk-Food-shutterstock_537665956.jpg',
      name: 'Makanan Saya 2',
      description: 'Ini makanan saya asli sangat segar dan sangan enak cuyy',
      ingredients: 'Kurma, Buah, Sayur, Tomat',
      price: 1500000,
      rate: 4.3),
  Food(
      id: 1,
      picturePath:
          'https://image-cdn.medkomtek.com/l5EBFWIktelHL9WXJd1164CtxUI=/640x480/smart/klikdokter-media-buckets/medias/2321296/original/049998000_1605579809-Waspada_-Inilah-Deretan-Penyakit-Akibat-Junk-Food-shutterstock_537665956.jpg',
      name: 'Makanan Saya 3',
      description: 'Ini makanan saya asli sangat segar dan sangan enak cuyy',
      ingredients: 'Kurma, Buah, Sayur, Tomat',
      price: 1500000,
      rate: 4.3,
      types: [FoodType.new_food]),
  Food(
      id: 1,
      picturePath:
          'https://image-cdn.medkomtek.com/l5EBFWIktelHL9WXJd1164CtxUI=/640x480/smart/klikdokter-media-buckets/medias/2321296/original/049998000_1605579809-Waspada_-Inilah-Deretan-Penyakit-Akibat-Junk-Food-shutterstock_537665956.jpg',
      name: 'Makanan Saya 4',
      description: 'Ini makanan saya asli sangat segar dan sangan enak cuyy',
      ingredients: 'Kurma, Buah, Sayur, Tomat',
      price: 1500000,
      rate: 4.3,
      types: [FoodType.recommended]),
  Food(
      id: 1,
      picturePath:
          'https://image-cdn.medkomtek.com/l5EBFWIktelHL9WXJd1164CtxUI=/640x480/smart/klikdokter-media-buckets/medias/2321296/original/049998000_1605579809-Waspada_-Inilah-Deretan-Penyakit-Akibat-Junk-Food-shutterstock_537665956.jpg',
      name: 'Makanan Saya 5',
      description: 'Ini makanan saya asli sangat segar dan sangan enak cuyy',
      ingredients: 'Kurma, Buah, Sayur, Tomat',
      price: 1500000,
      rate: 4.3),
];
