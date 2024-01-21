class Category {
  final String name;
  final String image;
  final int count;

  Category(this.count, this.image, this.name);
}

List<Category> category = categoryData
    .map((item) =>
        Category(item['count'] as int, item['image'] as String, item['name'] as String))
    .toList();

var categoryData = [
  {'name': 'Vegetables', 'count': 43, 'image': 'assets/ui_11/images/category_img/Media.png'},
  {'name': 'Fruits', 'count': 32, 'image': 'assets/ui_11/images/category_img/Media1.png'},
  {
    'name': 'Bread',
    'count': 22,
    'image': 'assets/ui_11/images/category_img/Media (2).png'
  },
  {'name': 'Sweets', 'count': 56, 'image': 'assets/ui_11/images/category_img/Media (3).png'},
  {'name': 'Pasta', 'count': 23, 'image': 'assets/ui_11/images/category_img/Media (4).png'},
  {'name': 'Coffee', 'count': 34, 'image': 'assets/ui_11/images/category_img/Media (5).png'},
];

