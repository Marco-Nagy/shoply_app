import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repository.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';
import 'package:shoply/features/admin/categories/domain/use_cases/create_firebase_category_use_case.dart';
import 'package:shoply/features/admin/categories/domain/use_cases/delete_firebase_category_use_case.dart';
import 'package:shoply/features/admin/categories/domain/use_cases/get_firebase_categories_use_case.dart';
import 'package:shoply/features/admin/categories/domain/use_cases/update_firebase_category_use_case.dart';

part 'admin_categories_bloc.freezed.dart';
part 'admin_categories_event.dart';
part 'admin_categories_state.dart';

@injectable
class AdminCategoriesBloc
    extends Bloc<AdminCategoriesEvent, AdminCategoriesState> {
  AdminCategoriesBloc(
    this._adminCategoriesRepo, // REST Repo restored
    this._getFirebaseCategoriesUseCase,
    this._createFirebaseCategoryUseCase,
    this._updateFirebaseCategoryUseCase,
    this._deleteFirebaseCategoryUseCase,
  ) : super(const AdminCategoriesState.initial()) {
    // REST Handlers restored
    on<FetchAdminCategoriesListEvent>(_fetchAdminCategoriesList);
    on<CreateNewCategoryEvent>(_createNewCategory);
    on<UpdateCategoryEvent>(_updateAdminCategory);
    on<DeleteCategoryEvent>(_deleteCategory);

    // Firebase Handlers added
    on<FetchFirebaseCategoriesEvent>(_fetchFirebaseCategoriesList);
    on<CreateFirebaseCategoryEvent>(_createFirebaseCategory);
    on<UpdateFirebaseCategoryEvent>(_updateFirebaseCategory);
    on<DeleteFirebaseCategoryEvent>(_deleteFirebaseCategory);
  }

  // REST Repository (Not modified)
  final AdminCategoriesRepository _adminCategoriesRepo;

  // Firebase Use Cases (Added)
  final GetFirebaseCategoriesUseCase _getFirebaseCategoriesUseCase;
  final CreateFirebaseCategoryUseCase _createFirebaseCategoryUseCase;
  final UpdateFirebaseCategoryUseCase _updateFirebaseCategoryUseCase;
  final DeleteFirebaseCategoryUseCase _deleteFirebaseCategoryUseCase;

  // --- REST Handlers (Restored) ---

  FutureOr<void> _fetchAdminCategoriesList(FetchAdminCategoriesListEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.getAllCategories();
    result.when(
      success: (data) {
        if (data.data != null && data.data!.categories != null) {
          if (data.data!.categories!.isEmpty) {
            emit(const AdminCategoriesState.getAdminCategoriesListEmpty());
          } else {
            emit(AdminCategoriesState.getAdminCategoriesListSuccess(
                data.data!.categories ?? []));
          }
        }
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.getAdminCategoriesListFailure(
            errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _createNewCategory(
      CreateNewCategoryEvent event, Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.createNewCategory(event.body);
    result.when(
      success: (data) {
        if (data.data != null) {
          emit(const AdminCategoriesState.addNewCategorySuccess());
        }
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.addNewCategoryFailure(errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _updateAdminCategory(
      UpdateCategoryEvent event, Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.updateCategory(event.body);
    result.when(
      success: (data) {
        if (data.data != null) {
          emit(const AdminCategoriesState.updateCategorySuccess());
        }
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.updateCategoryFailure(errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _deleteCategory(
      DeleteCategoryEvent event, Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result =
        await _adminCategoriesRepo.deleteCategory(event.categoryId.toString());
    result.when(
      success: (data) {
        if (data.data != null) {
          emit(const AdminCategoriesState.deleteCategorySuccess());
        }
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.deleteCategoryFailure(errorHandler.errorMsg));
      },
    );
  }

  // --- Firebase Handlers (Added) ---

  FutureOr<void> _fetchFirebaseCategoriesList(
      FetchFirebaseCategoriesEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _getFirebaseCategoriesUseCase(NoParams());
    result.when(
      success: (data) {
        if (data.isEmpty) {
          emit(const AdminCategoriesState.getFirebaseCategoriesEmpty());
        } else {
          emit(AdminCategoriesState.getFirebaseCategoriesSuccess(data));
        }
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.getFirebaseCategoriesFailure(
            errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _createFirebaseCategory(CreateFirebaseCategoryEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _createFirebaseCategoryUseCase(event.category);
    result.when(
      success: (_) {
        emit(const AdminCategoriesState.addFirebaseCategorySuccess());
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.addFirebaseCategoryFailure(
            errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _updateFirebaseCategory(UpdateFirebaseCategoryEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _updateFirebaseCategoryUseCase(event.category);
    result.when(
      success: (_) {
        emit(const AdminCategoriesState.updateFirebaseCategorySuccess());
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.updateFirebaseCategoryFailure(
            errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _deleteFirebaseCategory(DeleteFirebaseCategoryEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _deleteFirebaseCategoryUseCase(event.categoryId);
    result.when(
      success: (_) {
        emit(const AdminCategoriesState.deleteFirebaseCategorySuccess());
      },
      failure: (errorHandler) {
        emit(AdminCategoriesState.deleteFirebaseCategoryFailure(
            errorHandler.errorMsg));
      },
    );
  }
}
