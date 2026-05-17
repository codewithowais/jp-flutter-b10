import 'package:flutter/material.dart';
import 'package:myapp/screens/about/about_view.dart';
import 'package:myapp/screens/cart/cart_view.dart';
import 'package:myapp/screens/dashbaord/dashboard_view.dart';
import 'package:myapp/screens/profile/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeTab = 0;
  List<int> tabHistory = [0];

  List<Widget> screens = [
    DashboardView(),
    AboutView(),
    CartView(),
    ProfileView(),
  ];

  void changeTab(index) {
    setState(() {
      activeTab = index;
      if (tabHistory.isEmpty || tabHistory.last != index) {
        tabHistory.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: tabHistory.length <= 1,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        setState(() {
          tabHistory.removeLast();
          activeTab = tabHistory.last;
        });
      },
      child: Scaffold(
        body: screens[activeTab],
        bottomNavigationBar: BottomAppBar(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  changeTab(0);
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: activeTab == 0 ? Colors.red : Colors.black,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  changeTab(1);
                },
                child: Text(
                  "About",
                  style: TextStyle(
                    color: activeTab == 1 ? Colors.red : Colors.black,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  changeTab(2);
                },
                child: Text(
                  "Cart",
                  style: TextStyle(
                    color: activeTab == 2 ? Colors.red : Colors.black,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  changeTab(3);
                },
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: activeTab == 3 ? Colors.red : Colors.black,
                  ),
                ),
              ),
            ],  
          ),  
        ),  
      ),  
    );  
  } 
}
