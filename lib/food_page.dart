import 'package:beam_tz/food_basket_screen.dart';
import 'package:beam_tz/main_screen.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int currentIndex = 0;
  List<Widget> screens = [
    const FoodBasketScreen(),
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
  ];
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
          setState(() {
            currentIndex = value;
          });
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
                  child: Image.asset('assets/images/Frame 2608710.png'),
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
            // key: cartKey,
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
