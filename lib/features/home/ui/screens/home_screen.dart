import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/app/assets_path.dart';
import 'package:ui_kit_ecom/features/home/data/models/category_item_model.dart';
import 'package:ui_kit_ecom/features/home/ui/widgets/slider_widget.dart';
import '../../../common/ui/widgets/app_bar_title_text.dart';
import '../../../common/ui/widgets/custom_search_bar_widget.dart';
import '../widgets/custom_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            AppBarTitleText(titleText: 'Shop'),
            SizedBox(width: 16),
            Expanded(
              child: SizedBox(height: 40, child: CustomSearchBarWidget()),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomHeaderWidget(text: 'Categories', onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CategoryGridWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 16 * 2 - 8) / 2;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: dummyCategories.map((category) {
        return SizedBox(
          width: itemWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    children: category.images.take(4).map((imagePath) {
                      return Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      category.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      category.count.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
