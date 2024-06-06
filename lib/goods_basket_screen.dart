import 'package:flutter/material.dart';

class GoodsBasketScreen extends StatelessWidget {
  const GoodsBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        actions: const [
          Text('Очистить'),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 390,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Text(
                              'Hair',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            SizedBox(
                              height: 110,
                              width: 110,
                              child: Card(
                                child: Image.asset('assets/images/shampoo.png'),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hadat Cosmetics',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '1900 c',
                                      style:  TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Шампунь интенсивно\nвосстанавливающий Hydro\nIntensive Repair Shampoo 250 мл',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(Icons.delete)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(
                              height: 110,
                              width: 110,
                              child: Card(
                                child:
                                    Image.asset('assets/images/shampoo2.png'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hadat Cosmetics',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '2000 c',
                                      style:  TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Увлажняющий кондиционер\n150 мл',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(Icons.delete)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffF72055),
                          ),
                          height: 56,
                          width: 310,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Заказать',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '3900 c',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 248,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Text(
                              'Preen Beauty',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            )
                          ],
                        ),
                        const Divider(),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(
                              height: 110,
                              width: 110,
                              child: Card(
                                child:
                                    Image.asset('assets/images/shampoo3.png'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "L'Oreal Paris\nElseve",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '600 c',
                                      style:  TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Шампунь для\nослабленных волосл',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      height: 34,
                                      child: Card(
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(Icons.delete)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffF72055),
                          ),
                          height: 43,
                          width: 310,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Заказать',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '3900 c',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
