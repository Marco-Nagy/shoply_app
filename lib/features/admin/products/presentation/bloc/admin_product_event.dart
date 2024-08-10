part of 'admin_product_bloc.dart';

@freezed
class AdminProductEvent with _$AdminProductEvent {
  const factory AdminProductEvent.started() = _Started;
  const factory AdminProductEvent.getAdminProductList() = GetAdminProductListEvent;
  const factory AdminProductEvent.getAdminProductDetails({required String productId}) = GetAdminProductDetailsEvent;
  const factory AdminProductEvent.createAdminProduct({required CreateProductRequest body}) = CreateAdminProductEvent;
  const factory AdminProductEvent.updateAdminProduct({required UpdateProductRequest body}) = UpdateAdminProductEvent;
  const factory AdminProductEvent.deleteAdminProduct({required String productId}) = DeleteAdminProductEvent;

}
