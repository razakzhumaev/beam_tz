import 'package:beam_tz/food_page.dart';
import 'package:beam_tz/goods_page.dart';
import 'package:beam_tz/main_screen.dart';
import 'package:beam_tz/scan_code_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
    const FoodPage()
  ];

  void showCartMenu(BuildContext context) async {
    Widget menuContainer = Container(
      width: 70,
      height: 197,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FoodPage();
              }));
            },
            child: const CircleAvatar(
              radius: 48,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fastfood),
                  Text('Еда'),
                ],
              ),
              backgroundColor: Color(0xffF5F5F6),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GoodsPage(),
                ),
              );
            },
            child: const CircleAvatar(
              radius: 48,
              backgroundColor: Color(0xffF5F5F6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag),
                  Text('Товары'),
                ],
              ),
            ),
          )
        ],
      ),
    );
    await showMenu(
      context: context,
      position: RelativeRect.fromDirectional(
        textDirection: TextDirection.rtl,
        start: 20,
        top: 550,
        end: 500,
        bottom: 0,
      ),
      items: [
        PopupMenuItem(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: menuContainer,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xffF72055),
        currentIndex: currentIndex,
        onTap: (value) {
          if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScanCodePage(),
              ),
            );
          } else if (value == 4) {
            showCartMenu(context);
          } else {
            setState(() {
              currentIndex = value;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset('assets/images/Frame 42054.png'),
                const Text('Лента'),
              ],
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.favorite),
                Text('Избранное'),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xffF72055),
                  child: Image.asset('assets/images/category.png'),
                ),
              ],
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.person),
                Text('Профиль'),
              ],
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.shopping_cart_sharp),
                Text('Корзина'),
              ],
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: screens[currentIndex],
        ),
      ),
    );
  }
}
