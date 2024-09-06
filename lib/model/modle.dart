class MenuItem {
  final String name;
  final double price;

  MenuItem({required this.name, required this.price});
}

class MenuCategory {
  final String category;
  final String imageUrl; // إضافة حقل الصورة للفئة
  final List<MenuItem> items;

  MenuCategory(
      {required this.category, required this.imageUrl, required this.items});
}

final List<MenuCategory> menuCategories = [
  MenuCategory(
    category: "الكريب",
    imageUrl: "assets/images/krep.jpg", // رابط الصورة للفئة
    items: [
      MenuItem(name: "شاورما لحم", price: 85),
      MenuItem(name: "شاورما فراخ", price: 75),
      MenuItem(name: "كفته لحم", price: 75),
      MenuItem(name: "بطاطس", price: 55),
      MenuItem(name: "شيش طاووق", price: 70),
      MenuItem(name: "زنجر", price: 80),
      MenuItem(name: "كفته فراخ", price: 70),
      MenuItem(name: "رومي مدخن", price: 90),
    ],
  ),
  MenuCategory(
    category: "برجر مشوي فحم",
    imageUrl: "assets/images/pargrt.jpg",
    items: [
      MenuItem(name: "سنجل", price: 75),
      MenuItem(name: "دبل", price: 85),
      MenuItem(name: "برجر لحم", price: 135),
      MenuItem(name: "برجر دجاج", price: 145),
    ],
  ),
  MenuCategory(
    category: "السلطات والمقبلات",
    imageUrl: "assets/images/salat.jpg",
    items: [
      MenuItem(name: "تومية", price: 10),
      MenuItem(name: "طحينة", price: 10),
      MenuItem(name: "مخلل", price: 10),
      MenuItem(name: "خيار", price: 10),
      MenuItem(name: "كول سلو", price: 20),
    ],
  ),
  MenuCategory(
    category: "وجبات عائلية",
    imageUrl: "assets/images/Thefamle.jpg",
    items: [
      MenuItem(name: "كفتة دجاج", price: 370),
      MenuItem(name: "شيش طاووق", price: 370),
      MenuItem(name: "كباب", price: 370),
      MenuItem(name: "كفتة لحم", price: 370),
      MenuItem(name: "ريش", price: 370),
    ],
  ),
  MenuCategory(
    category: "فراج شواية",
    imageUrl: "assets/images/mashweat.jpg",
    items: [
      MenuItem(name: "فرخة كاملة", price: 320),
      MenuItem(name: "نصف فرخة", price: 165),
      MenuItem(name: "ربع فرخة", price: 85),
      MenuItem(name: "شيش طاووق", price: 285),
      MenuItem(name: "كفتة فراخ", price: 145),
    ],
  ),
  MenuCategory(
    category: "شاورما وزن",
    imageUrl: "assets/images/sawermaweson.jpg",
    items: [
      MenuItem(name: "شاورما لحم (كيلو)", price: 460),
      MenuItem(name: "شاورما لحم (نصف كيلو)", price: 500),
      MenuItem(name: "شاورما لحم (ربع كيلو)", price: 500),
      MenuItem(name: "شاورما فراخ (كيلو)", price: 460),
      MenuItem(name: "شاورما فراخ (نصف كيلو)", price: 500),
      MenuItem(name: "شاورما فراخ (ربع كيلو)", price: 500),
    ],
  ),
  MenuCategory(
    category: "ساندوتشات شاورما",
    imageUrl: "assets/images/shawerma.jpg",
    items: [
      MenuItem(name: "سوري صغير", price: 55),
      MenuItem(name: "سوري وسط", price: 60),
      MenuItem(name: "فرنساوي صغير", price: 55),
      MenuItem(name: "فرنساوي وسط", price: 60),
      MenuItem(name: "كيزر صغير", price: 55),
      MenuItem(name: "كيزر وسط", price: 60),
      MenuItem(name: "شاورما لحم صغير", price: 70),
      MenuItem(name: "شاورما لحم وسط", price: 80),
      MenuItem(name: "شاورما فراخ صغير", price: 65),
      MenuItem(name: "شاورما فراخ وسط", price: 70),
      MenuItem(name: "شاورما ميكس صغير", price: 70),
      MenuItem(name: "شاورما ميكس وسط", price: 80),
    ],
  ),
  MenuCategory(
    category: "فته شاورما",
    imageUrl: "assets/images/fattehِAlshwerma.jpg",
    items: [
      MenuItem(name: "فته لحم S", price: 85),
      MenuItem(name: "فته لحم M", price: 95),
      MenuItem(name: "فته لحم L", price: 100),
      MenuItem(name: "فته لحم XL", price: 110),
      MenuItem(name: "فته فراخ S", price: 75),
      MenuItem(name: "فته فراخ M", price: 85),
      MenuItem(name: "فته فراخ L", price: 90),
      MenuItem(name: "فته فراخ XL", price: 100),
      MenuItem(name: "فته ميكس S", price: 85),
      MenuItem(name: "فته ميكس M", price: 95),
      MenuItem(name: "فته ميكس L", price: 100),
      MenuItem(name: "فته ميكس XL", price: 110),
    ],
  ),
  MenuCategory(
    category: "شاورما عربي",
    imageUrl: "assets/images/sawermaerabe.jpg",
    items: [
      MenuItem(name: "شيش طاووق وسط", price: 235),
      MenuItem(name: "شيش طاووق كبير", price: 275),
      MenuItem(name: "كفتة دجاج وسط", price: 145),
      MenuItem(name: "كفتة دجاج كبير", price: 190),
      MenuItem(name: "شاورما لحم وسط", price: 145),
      MenuItem(name: "شاورما لحم كبير", price: 190),
      MenuItem(name: "ريش وسط", price: 145),
      MenuItem(name: "ريش كبير", price: 190),
    ],
  ),
  MenuCategory(
    category: "بروست",
    imageUrl: "assets/images/prost.jpg",
    items: [
      MenuItem(name: "2 قطعة بروست", price: 70),
      MenuItem(name: "3 قطعة بروست", price: 115),
      MenuItem(name: "4 قطعة بروست", price: 190),
      MenuItem(name: "6 قطعة بروست", price: 360),
    ],
  ),
  MenuCategory(
    category: "وجبات غربي",
    imageUrl: "assets/images/sandawershghrape.jpg",
    items: [
      MenuItem(name: "وجبة زنجر وسط", price: 125),
      MenuItem(name: "وجبة زنجر كبير", price: 160),
      MenuItem(name: "وجبة شيش طاووق وسط", price: 115),
      MenuItem(name: "وجبة شيش طاووق كبير", price: 160),
      MenuItem(name: "وجبة كفته فراخ وسط", price: 115),
      MenuItem(name: "وجبة كفته فراخ كبير", price: 160),
      MenuItem(name: "وجبة كباب وسط", price: 110),
      MenuItem(name: "وجبة كباب كبير", price: 155),
      MenuItem(name: "وجبة ريش وسط", price: 100),
      MenuItem(name: "وجبة ريش كبير", price: 145),
      MenuItem(name: "وجبة فاهيتا وسط", price: 110),
      MenuItem(name: "وجبة فاهيتا كبير", price: 155),
      MenuItem(name: "وجبة فاهيتا لحم وسط", price: 125),
      MenuItem(name: "وجبة فاهيتا لحم كبير", price: 160),
    ],
  ),
  MenuCategory(
    category: "قسم المشاوي فحم",
    imageUrl: "assets/images/mashawe.jpg",
    items: [
      MenuItem(name: "كباب وسط", price: 90),
      MenuItem(name: "كباب كبير", price: 95),
      MenuItem(name: "كفتة لحم وسط", price: 90),
      MenuItem(name: "كفتة لحم كبير", price: 95),
      MenuItem(name: "كفتة دجاج وسط", price: 90),
      MenuItem(name: "كفتة دجاج كبير", price: 95),
      MenuItem(name: "شيش طاووق وسط", price: 90),
      MenuItem(name: "شيش طاووق كبير", price: 95),
      MenuItem(name: "ريش وسط", price: 115),
      MenuItem(name: "ريش كبير", price: 160),
      MenuItem(name: "كباب لحم وسط", price: 115),
      MenuItem(name: "كباب لحم كبير", price: 160),
      MenuItem(name: "فاهيتا لحم وسط", price: 115),
      MenuItem(name: "فاهيتا لحم كبير", price: 160),
    ],
  ),
  MenuCategory(
    category: "ساندوتشات مشوي فحم",
    imageUrl: "assets/images/mashawe2.jpg",
    items: [
      MenuItem(name: "ساندوتش شيش طاووق صغير", price: 55),
      MenuItem(name: "ساندوتش شيش طاووق وسط", price: 60),
      MenuItem(name: "ساندوتش كباب لحم صغير", price: 55),
      MenuItem(name: "ساندوتش كباب لحم وسط", price: 60),
      MenuItem(name: "ساندوتش كفتة لحم صغير", price: 55),
      MenuItem(name: "ساندوتش كفتة لحم وسط", price: 60),
      MenuItem(name: "ساندوتش كفتة دجاج صغير", price: 55),
      MenuItem(name: "ساندوتش كفتة دجاج وسط", price: 60),
    ],
  ),
  MenuCategory(
    category: "أطباق إضافية",
    imageUrl: "assets/images/tabakedafe.jpg",
    items: [
      MenuItem(name: "بطاطس صغير", price: 10),
      MenuItem(name: "بطاطس وسط", price: 15),
      MenuItem(name: "بطاطس كبير", price: 20),
      MenuItem(name: "ثومية صغير", price: 10),
      MenuItem(name: "ثومية وسط", price: 15),
      MenuItem(name: "ثومية كبير", price: 20),
      MenuItem(name: "طحينة صغير", price: 10),
      MenuItem(name: "طحينة وسط", price: 15),
      MenuItem(name: "طحينة كبير", price: 20),
      MenuItem(name: "مخلل صغير", price: 5),
      MenuItem(name: "مخلل وسط", price: 10),
      MenuItem(name: "مخلل كبير", price: 15),
      MenuItem(name: "كول سلو صغير", price: 10),
      MenuItem(name: "كول سلو وسط", price: 15),
      MenuItem(name: "كول سلو كبير", price: 20),
    ],
  ),
  MenuCategory(
    category: "حلو مكارم الشام",
    imageUrl: "assets/images/alhelw.jpg",
    items: [
      MenuItem(name: "حلو مكارم الشام", price: 10),
      MenuItem(name: "كنافة", price: 15),
    ],
  ),
  MenuCategory(
    category: "حواوشي",
    imageUrl: "assets/images/hawaoshe.jpg",
    items: [
      MenuItem(name: "حواوشي لحمة", price: 35),
      MenuItem(name: "حواوشي لحمة بالموزاريلا", price: 50),
    ],
  ),
  MenuCategory(
    category: "فطار مكارم بالدماطق السوري الأصلي",
    imageUrl: "assets/images/prackfast.jpg",
    items: [
      MenuItem(name: "بطاطس صباحي", price: 25),
      MenuItem(name: "بطاطس شامي", price: 30),
      MenuItem(name: "فول صباحي", price: 25),
      MenuItem(name: "فول شامي", price: 30),
      MenuItem(name: "مكس فول وبطاطس صباحي", price: 30),
      MenuItem(name: "مكس فول وبطاطس شامي", price: 35),
      MenuItem(name: "سوسيس بالبطاطس صباحي", price: 55),
      MenuItem(name: "سوسيس بالبطاطس شامي", price: 65),
      MenuItem(name: "بسطرمة بالبيض صباحي", price: 55),
      MenuItem(name: "بسطرمة بالبيض شامي", price: 65),
      MenuItem(name: "أومليت موزاريلا صباحي", price: 55),
      MenuItem(name: "أومليت موزاريلا شامي", price: 65),
      MenuItem(name: "رومي مدخن بالبطاطس صباحي", price: 55),
      MenuItem(name: "رومي مدخن بالبطاطس شامي", price: 65),
      MenuItem(name: "بطاطس بالبيض صباحي", price: 55),
      MenuItem(name: "بطاطس بالبيض شامي", price: 65),
      MenuItem(name: "فلافل بالبيض صباحي", price: 55),
      MenuItem(name: "فلافل بالبيض شامي", price: 65),
    ],
  ),
];
