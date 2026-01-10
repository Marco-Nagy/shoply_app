import 'package:shoply/core/app/apis/errors/error_model.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_response.dart';
import 'package:shoply/features/admin/categories/data/model/delete/delete_response.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_response.dart';

class MockCategoryTest {
  static GetAllCategoriesList mockGetAllCategoriesList =
      GetAllCategoriesList(List.generate(
          7,
          (index) => Categories(
                'category_id_$index',
                'Electronics$index',
                'category_id_$index',
              )));
  static GetAllCategoriesResponse mockGetAllCategoriesResponse =
      GetAllCategoriesResponse(mockGetAllCategoriesList, null);
  static CreateCategoryRequest mockCreateCategoryRequest =
      CreateCategoryRequest(
    'New Category',
    'image.jpg',
  );
  static CreateCategoryResponse mockCreateCategoryResponse =
      CreateCategoryResponse(
    CreateCategoryResponseData(
        AddCategory(mockCategoryId, 'New Category', 'image.jpg')),
    null,
  );
  static CreateCategoryResponse mockCreateCategoryResponseError =
      CreateCategoryResponse(
    null,
    [mockErrorModel],
  );

  static UpdateCategoryRequest mockUpdateCategoryRequest =
      UpdateCategoryRequest(
    mockCategoryId,
    'Updated Category',
    'image.jpg',
  );
  static UpdateCategoryResponse mockUpdateCategoryResponse =
      UpdateCategoryResponse(
    UpdateCategoryResponseData(UpdateCategory(mockCategoryId)),
    null,
  );
  static UpdateCategoryResponse mockUpdateCategoryResponseError =
      UpdateCategoryResponse(
    null,
    [mockErrorModel],
  );
  static String mockCategoryId = '1';

  static DeleteCategoryResponse mockDeleteCategoryResponse =
      DeleteCategoryResponse(DeleteResponseData(true), null);

  static DeleteCategoryResponse mockDeleteCategoryResponseError =
      DeleteCategoryResponse(
    null,
    [mockErrorModel],
  );
  static ErrorModel mockErrorModel = ErrorModel(
    'error message',
    [],
    [],
    ErrorsExtensions(
      'error code',
      ErrorsExtensionsOriginalError('error message', 404),
    ),
  );
  static GetAllCategoriesResponse mockGetAllCategoriesResponseError =
      GetAllCategoriesResponse(null, [mockErrorModel]);
}
