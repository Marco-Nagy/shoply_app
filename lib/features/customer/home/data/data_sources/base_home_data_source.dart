


abstract class BaseHomeDataSource {
  getAllCategories();
  getProductsList({required int offset});
  getProductDetails({required String productId});
  getProductListPerCategory({required String categoryId});

}
