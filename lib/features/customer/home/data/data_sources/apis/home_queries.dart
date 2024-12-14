import 'package:shoply/features/customer/home/data/data_sources/base_home_data_source.dart';

class HomeQueries implements BaseHomeDataSource {
  factory HomeQueries() => _instance;

  HomeQueries._();

  static final HomeQueries _instance = HomeQueries._();

  @override
  Map<String, dynamic> getProductsList({required int offset}) {
    return {
      'query': '''{
       products(limit: 6, offset: $offset){
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

    };
  }

  @override
  Map<String, dynamic> getProductDetails({required String productId}) {
    return {
      'query': '''{
        product(id: $productId) {
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
        'productId': productId,
      }
    };
  }

  @override
  Map<String, dynamic> getProductListPerCategory({required String categoryId}) {
    return {
      'query': '''{
        products(categoryId: $categoryId) {
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
        'categoryId': double.parse(categoryId.toString()),
      }
    };
  }

  @override
  Map<String, dynamic> getAllCategories() {
    return {
      'query': '''
      {
        categories
        {
          id
          name
          image
        }
      }
      ''',
    };
  }
}
