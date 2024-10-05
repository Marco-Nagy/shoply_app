part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.filteredProductsLoading() = FilteredProductsLoading;

  //* Get Filtered Product List States
  const factory FilterState.getFilteredProductsListSuccess(List<GetProductEntity>? productList) = GetFilteredProductsListSuccess;
  const factory FilterState.getFilteredProductsListEmpty() = GetFilteredProductsListEmpty;
  const factory FilterState.getFilteredProductsListFailure(String errorMessage) = GetFilteredProductsListFailure;
}
