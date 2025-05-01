import 'package:demo/common/widgets/loader/loaders.dart';
import 'package:demo/data/reposiories/categories/category_repository.dart';
import 'package:demo/features/shop/models/categories_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  // Load category data
  Future<void> fetchCategories() async {
    try {
      // Show Loader while loading Categories
      isLoading.value = true;

      // Fetch categories from datasource [Firestore, API, etc]
      final categories = await _categoryRepository.getAllCategories();

      // Update Category list
      allCategories.assignAll(categories);

      // Filtered Featured Categories
      featuredCategories.assignAll(allCategories
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .take(8)
          .toList());
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      isLoading.value = false;
    }
  }

  // Load selected category data

  // Get category or sub category products
}
