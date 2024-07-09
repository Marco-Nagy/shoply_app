import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/dashboard/data/repositories/dashboard_repository.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(this._dashboardRepo) : super(const DashboardState.loading()) {
    on<GetProductsEvent>(_getTotalProducts);
    on<GetCategoriesEvent>(_getTotalCategories);
    on<GetUsersEvent>(_getTotalUsers);
  }

  final DashboardRepository _dashboardRepo;

  FutureOr<void> _getTotalProducts(
      GetProductsEvent event, Emitter<DashboardState> emit) async {
    final result = await _dashboardRepo.getTotalProducts();
    result.when(
      success: (data) {
        emit(DashboardState.successProducts(
            totalProducts: data.data!.products!.isNotEmpty
                ? data.data!.products!.length.toString()
                : '0'));
      },
      failure: (errorHandler) {
        emit(DashboardState.errorProducts(error: errorHandler.errorMsg));
      },
    );
  }

  Future<FutureOr<void>> _getTotalCategories(
      GetCategoriesEvent event, Emitter<DashboardState> emit) async {
    final result = await _dashboardRepo.getTotalCategories();
    result.when(
      success: (data) {
        emit(DashboardState.successCategories(
            totalCategories: data.data!.categories!.isNotEmpty
                ? data.data!.categories!.length.toString()
                : '0'));
      },
      failure: (errorHandler) {
        emit(DashboardState.errorCategories(error: errorHandler.errorMsg));
      },
    );
  }

  FutureOr<void> _getTotalUsers(
      GetUsersEvent event, Emitter<DashboardState> emit) async {
    final result = await _dashboardRepo.getTotalUsers();
    result.when(
      success: (data) {
        emit(DashboardState.successUsers(
            totalUsers: data.data!.users!.isNotEmpty
                ? data.data!.users!.length.toString()
                : '0'));
      },
      failure: (errorHandler) {
        emit(DashboardState.errorUsers(error: errorHandler.errorMsg));
      },
    );
  }
}
