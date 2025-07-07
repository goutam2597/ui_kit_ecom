import '../../../../app/assets_path.dart';

class CategoryItemModel {
  final List<String> images;
  final String title;
  final String count;

  CategoryItemModel({
    required this.images,
    required this.title,
    required this.count,
  });
}

List<CategoryItemModel> dummyCategories = [
  CategoryItemModel(
    title: 'Clothing',
    count: '109',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  CategoryItemModel(
    title: 'Shoes',
    count: '1009',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  CategoryItemModel(
    title: 'bags',
    count: '1090',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  CategoryItemModel(
    title: 'Hoodie',
    count: '1109',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  CategoryItemModel(
    title: 'Watch',
    count: '1009',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  CategoryItemModel(
    title: 'Phones',
    count: '19',
    images: [
      AssetsPath.placeholderCategoryItem01,
      AssetsPath.placeholderCategoryItem02,
      AssetsPath.placeholderCategoryItem03,
      AssetsPath.placeholderCategoryItem04,
    ],
  ),
  // other categories...
];
