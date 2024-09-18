part of 'admin_product_bloc.dart';

@freezed
class AdminProductState with _$AdminProductState {
  const factory AdminProductState.initial() = _Initial;
  const factory AdminProductState.adminProductLoading() = AdminProductLoading;

  //* Get Admin Product List States
  const factory AdminProductState.getAdminProductListSuccess(List<GetProductEntity>? productList) = GetAdminProductListSuccess;
  const factory AdminProductState.getAdminProductListEmpty() = GetAdminProductListEmpty;
  const factory AdminProductState.getAdminProductListFailure(String errorMessage) = GetAdminProductListFailure;
 //* Get Admin Product Details States
  const factory AdminProductState.getAdminProductDetailsSuccess(ProductsDetailsEntity product) = GetAdminProductDetailsSuccess;
  const factory AdminProductState.getAdminProductDetailsEmpty() = GetAdminProductDetailsEmpty;
  const factory AdminProductState.getAdminProductDetailsFailure(String errorMessage) = GetAdminProductDetailsFailure;

  //* Add New Product States
  const factory AdminProductState.createNewProductSuccess(String body) = CreateNewProductSuccess;
  const factory AdminProductState.createNewProductFailure(String errorMessage) = CreateNewProductFailure;

  //* Update Product States
  const factory AdminProductState.updateProductSuccess(String body) = UpdateProductSuccess;
  const factory AdminProductState.updateProductFailure(String errorMessage) = UpdateProductFailure;

  //* Delete Product States
  const factory AdminProductState.deleteProductSuccess(bool isDeleted) = DeleteProductSuccess;
  const factory AdminProductState.deleteProductFailure(String errorMessage) = DeleteProductFailure;
}
