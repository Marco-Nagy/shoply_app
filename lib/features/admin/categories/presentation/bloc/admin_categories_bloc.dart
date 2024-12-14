import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repository.dart';

part 'admin_categories_bloc.freezed.dart';
part 'admin_categories_event.dart';
part 'admin_categories_state.dart';

class AdminCategoriesBloc
    extends Bloc<AdminCategoriesEvent, AdminCategoriesState> {
  AdminCategoriesBloc(this._adminCategoriesRepo)
      : super(const AdminCategoriesState.initial()) {
    on<FetchAdminCategoriesListEvent>(_fetchAdminCategoriesList);
    on<CreateNewCategoryEvent>(_createNewCategory);
    on<UpdateCategoryEvent>(_updateAdminCategory);
    on<DeleteCategoryEvent>(_deleteCategory);

  }
 final AdminCategoriesRepository _adminCategoriesRepo;
  Future<FutureOr<void>> _fetchAdminCategoriesList(FetchAdminCategoriesListEvent event,
      Emitter<AdminCategoriesState> emit) async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result =await _adminCategoriesRepo.getAllCategories();
    result.when(success: (data) {
      if (data.data != null&& data.data!.categories != null) {
        if ( data.data!.categories!.isEmpty) {
          emit(const AdminCategoriesState.getAdminCategoriesListEmpty());
        }  else {
          emit( AdminCategoriesState.getAdminCategoriesListSuccess(data.data!.categories??[]));
        }

      }
    }, failure: (errorHandler) {
      emit( AdminCategoriesState.getAdminCategoriesListFailure(errorHandler.errorMsg));
    },);
  }

  FutureOr<void> _createNewCategory(
      CreateNewCategoryEvent event, Emitter<AdminCategoriesState> emit)async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.createNewCategory(event.body);
    result.when(success: (data) {
      if (data.data!=null) {
        emit(const AdminCategoriesState.addNewCategorySuccess());
      }
    }, failure: (errorHandler) {
      emit(AdminCategoriesState.addNewCategoryFailure(errorHandler.errorMsg));
    },);
  }

  FutureOr<void> _updateAdminCategory(
      UpdateCategoryEvent event, Emitter<AdminCategoriesState> emit)async {
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.updateCategory(event.body);
    result.when(success: (data) {
      if (data.data!=null) {
        emit(const AdminCategoriesState.updateCategorySuccess());
      }
    }, failure: (errorHandler) {
      emit(AdminCategoriesState.updateCategoryFailure(errorHandler.errorMsg));
    },);
  }

  FutureOr<void> _deleteCategory(DeleteCategoryEvent event, Emitter<AdminCategoriesState> emit) async{
    emit(const AdminCategoriesState.adminCategoriesLoading());
    final result = await _adminCategoriesRepo.deleteCategory(event.categoryId.toString());
    result.when(success: (data) {
      if (data.data!=null) {
        emit(const AdminCategoriesState.deleteCategorySuccess());
      }
    }, failure: (errorHandler) {
      emit(AdminCategoriesState.deleteCategoryFailure(errorHandler.errorMsg));
    },);
  }
}
