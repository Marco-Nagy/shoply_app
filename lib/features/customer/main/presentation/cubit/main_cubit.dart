import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/helpers/enums/nav_bar_enum.dart';

part 'main_state.dart';

part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial());
  NavBarEnum iconNavBar = NavBarEnum.home;

  toggleNavBarEnum(NavBarEnum navBarEnum) {
    switch (navBarEnum) {
      case NavBarEnum.cart:
        iconNavBar = NavBarEnum.cart;
      case NavBarEnum.home:
        iconNavBar = NavBarEnum.home;
      case NavBarEnum.notification:
        iconNavBar = NavBarEnum.notification;
      case NavBarEnum.favorites:
        iconNavBar = NavBarEnum.favorites;
      case NavBarEnum.profile:
        iconNavBar = NavBarEnum.profile;
      default:
        NavBarEnum.home;
    }
    emit(MainState.barSelectedIcons(iconTab: iconNavBar));
  }
}
