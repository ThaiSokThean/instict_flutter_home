import 'package:flutter/material.dart';
import 'first_page_fragment.dart';
import 'second_page_fragment.dart';
import 'third_page_fragment.dart';
import 'fourth_page_fragment.dart';

class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const FirstPageFragment(),
    const SecondPageFragment(),
    const ThirdPageFragment(),
    const FourthPageFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget initWidget() {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: 20),
          child: BottomNavigationBar(
            elevation: 20,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffFFBD2F),
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/navigation_icon_index_1.png"),
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/navigation_icon_index_2.png"),
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/navigation_icon_index_3.png"),
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/navigation_icon_index_4.png"),
                  ),
                  label: ''
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        )
    );
  }
}
