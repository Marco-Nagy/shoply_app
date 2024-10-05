import 'package:shoply/features/filter/data/data_sources/base_filter_products_data_source.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';

class FilterProductsQueries implements BaseFilterProductsDataSource {
  factory FilterProductsQueries() => _instance;

  FilterProductsQueries._();

  static final FilterProductsQueries _instance = FilterProductsQueries._();

  @override
  filterProductsList({required FilterProductsEntity body}) {
    return {
      'query': r'''
       query FilterProducts($title: String, $priceMin: Int, $priceMax: Int,){
          products(price_min: $priceMin, price_max: $priceMax, title: $title){
            id
            title
            price
            description
            images
            category{
              id
              name
          }
        }
      }''',
      'variables': {
        'title': body.title,
        'priceMin': body.priceMin,
        'priceMax': body.priceMax,
      },
    };
  }
}
