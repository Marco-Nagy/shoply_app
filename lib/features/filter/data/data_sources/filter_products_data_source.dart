import 'package:shoply/features/filter/data/data_sources/base_filter_products_data_source.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';
import 'apis/filter_products_api_service.dart';
import 'apis/filter_products_queries.dart';

class FilterProductsDataSource extends BaseFilterProductsDataSource{
  FilterProductsDataSource(this._apiService);

  final FilterProductsApiService _apiService;

  @override
  filterProductsList({required FilterProductsEntity body}) async {
    return await _apiService.filterProducts(FilterProductsQueries().filterProductsList(body: body));
  }
}
