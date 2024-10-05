part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.started() = _Started;
  const factory FilterEvent.getFilteredProductsList(
      {required FilterProductsEntity body}) = GetFilteredProductsListEvent;
}
