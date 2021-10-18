import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sinpeman_covid_19/bloc/state.dart';

enum NavbarItem { mainPage, materiPage }

class NavbarBloc extends Bloc<NavbarItem, NavbarState> {
  NavbarBloc(NavbarState initialState) : super(ShowHomePage());

  @override
  Stream<NavbarState> mapEventToState(NavbarItem event) async* {
    switch (event) {
      case NavbarItem.materiPage:
        yield ShowMateriPage();
        break;
      default:
        yield ShowHomePage();
        break;
    }
  }
}
