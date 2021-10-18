import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sinpeman_covid_19/bloc/bloc.dart';
import 'package:sinpeman_covid_19/bloc/state.dart';
import 'package:sinpeman_covid_19/view/screening_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  NavbarBloc _navbarBloc = NavbarBloc(ShowHomePage());

  @override
  void initState() {
    super.initState();
    _navbarBloc = NavbarBloc(ShowHomePage());
  }

  @override
  void dispose() {
    _navbarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _navbarBloc,
      builder: (BuildContext context, NavbarState state) {
        //return buildPage(state.body, state.itemIndex);
        if (state is ShowHomePage) {
          return buildPage(
              state.body, state.itemIndex, state.appBarColor, state.iconColor);
        }
        if (state is ShowMateriPage) {
          return buildPage(
              state.body, state.itemIndex, state.appBarColor, state.iconColor);
        }

        return Container();
      },
    );
  }

  Scaffold buildPage(
      Widget body, int currentIndex, Color appbarcolor, Color iconcolor) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Image.asset("assets/single_logo.png"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
              child: Icon(Icons.info, color: Colors.white),
            )
          ],
          backgroundColor: const Color(0xff1888FC),
          elevation: 0,
          bottomOpacity: 0,
          shadowColor: const Color(0xff1888FC),
        ),
        body: body,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreeningPage()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Icon(Icons.edit, color: Colors.white),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            if (index == 0) _navbarBloc.add(NavbarItem.mainPage);

            if (index == 2) _navbarBloc.add(NavbarItem.materiPage);
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home_rounded,
                  color: Color(0xff1888FC),
                ),
                icon: Icon(Icons.home_rounded),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                activeIcon: Icon(
                  Icons.favorite,
                  color: Color(0xff1888FC),
                ),
                icon: Icon(Icons.favorite),
                label: "Screening"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.book,
                  color: Color(0xff1888FC),
                ),
                icon: Icon(Icons.book),
                label: "Materi")
          ],
        ));
  }
}
