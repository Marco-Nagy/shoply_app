import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';

class CategoriesQueries {
  factory CategoriesQueries() => _instance;

  CategoriesQueries._();

  static final CategoriesQueries _instance = CategoriesQueries._();

  Map<String, dynamic> getAllCategoriesMapMutation() {
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

  Map<String, dynamic> createCategoryMapMutation(CreateCategoryRequest body) {
    return {
      'query': r'''
      mutation AddCategory($name: String!, $image: String!) {
        addCategory(
            data: {
              name: $name,
              image: $image,
            }
        ) {
          id
          name
          image
        }
      }
      ''',
      'variables': {'name': body.name, 'image': body.image}
    };
  }

  Map<String, dynamic> updateCategoryMapMutation(UpdateCategoryRequest body) {
    return {
      'query': r'''
      mutation UpdateCategory($id: ID!, $name: String!, $image: String!){
        updateCategory( id: $id, changes: {name: $name,image: $image})
        {
          id
        }
      }''',
      'variables': {
        'id': body.id,
        'name': body.name,
        'image': body.image,
      }
    };
  }

  Map<String, dynamic> deleteCategoryMapMutation(String id) {
    return {
      'query': r'''
      mutation DeleteCategory($id: ID!){
        deleteCategory( id: $id)
      }''',
      'variables': {
        'id': int.parse(id),
      }
    };
  }
}
