part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.categoriesLoading() = HomeCategorieLoading;
  const factory HomeState.productsLoading() = HomeProductsLoading;

  //* Get Home Categories List States
  const factory HomeState.getHomeCategoriesListSuccess(List<CategoryEntity> categoriesList) = GetHomeCategoriesListSuccess;
  const factory HomeState.getHomeCategoriesListEmpty() = GetHomeCategoriesListEmpty;
  const factory HomeState.getHomeCategoriesListFailure(String errorMessage) = GetHomeCategoriesListFailure;


  //* Get Home Product List States
  const factory HomeState.getHomeProductListSuccess(List<GetProductEntity> productList) = GetHomeProductListSuccess;
  const factory HomeState.getHomeProductListEmpty() = GetHomeProductListEmpty;
  const factory HomeState.getHomeProductListFailure(String errorMessage) = GetHomeProductListFailure;
  //* Get Home Product List PerCategory States
  const factory HomeState.getHomeProductListPerCategorySuccess(List<GetProductEntity> productList) = GetHomeProductListPerCategorySuccess;
  const factory HomeState.getHomeProductListPerCategoryEmpty() = GetHomeProductListPerCategoryEmpty;
  const factory HomeState.getHomeProductListPerCategoryFailure(String errorMessage) = GetHomeProductListPerCategoryFailure;
  //* Get Home Product Details States
  const factory HomeState.getHomeProductDetailsSuccess(ProductsDetailsEntity product) = GetHomeProductDetailsSuccess;
  const factory HomeState.getHomeProductDetailsEmpty() = GetHomeProductDetailsEmpty;
  const factory HomeState.getHomeProductDetailsFailure(String errorMessage) = GetHomeProductDetailsFailure;


}


