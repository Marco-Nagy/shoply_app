part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.fetchHomeCategories() =FetchHomeCategoriesListEvent;
  const factory HomeEvent.getHomeProductList() = GetHomeProductListEvent;
  const factory HomeEvent.loadMoreProducts() = LoadMoreProductsEvent;
  const factory HomeEvent.getHomeProductDetails({required String productId}) = GetHomeProductDetailsEvent;
  const factory HomeEvent.getHomeProductListPerCategory({required String categoryId}) = GetHomeProductListPerCategoryEvent;

}
