import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';

class ProductsQueries {
  factory ProductsQueries() => _instance;
  ProductsQueries._();
  static final ProductsQueries _instance = ProductsQueries._();

  Map<String, dynamic> getProductsListMapQuery() {
    return {
      'query': '''{
       products{
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

  Map<String, dynamic> getProductDetailsMapQuery(String productId) {
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

  Map<String, dynamic> createProductMapMutation(CreateProductRequest body) {
    return {
      'query': r'''mutation createProduct($title: String!
          $price: Float!
          $description: String!
          $categoryId: Float!
          $imagesList: [String!]!) {
        addProduct(
            data: {
              title: $title,
              price: $price,
              description: $description,
              categoryId: $categoryId,
              images: $imagesList,
            }
        ) {
          id
        }
      }''',
      'variables': {
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'imagesList': body.images,
      }
    };
  }

  Map<String, dynamic> updateProductMapMutation(UpdateProductRequest body) {
    return {
      'query': r'''mutation updateProduct($id: ID!,
          $title: String!
          $price: Float!
          $description: String!
          $categoryId: Float!
          $imagesList: [String!]!) {
        updateProduct(
            id: $id,
            changes: {
              title: $title,
              price: $price,
              description: $description,
              categoryId: $categoryId,
              images: $imagesList,
            }
        ) {
          id
        }
      }''',
      'variables': {
        'id': body.id,
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'imagesList': body.images,
      }
    };
  }

  Map<String, dynamic> deleteProductMapMutation(String productId) {
    return {
      'query': r'''mutation DeleteProduct($productId: ID!) {
        deleteProduct(id: $productId) 
    
      }''',
      'variables': {
        'id': productId,
      }
    };
  }

}
