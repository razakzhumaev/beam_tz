import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Искать в Malina',
                suffixIcon: const Column(
                  children: [],
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffF72055),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 24),
                        Image.asset('assets/images/Frame.png'),
                        const SizedBox(width: 17),
                        const Text(
                          'Сканируй QR-код и заказывай\nпрямо в заведении',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image 1827.png'),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffFFDF94),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 23),
                            Text(
                              'Еда',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Из кафе и\nресторанов',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image 1826.png'),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffFFDEDD),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 23),
                            Text(
                              'Бьюти',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Салоны красоты\nи товары',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text('Скоро в Malina'),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 86,
                    width: 86,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ContainerWidget(
                          color: Color(0xffD4E5FF),
                          text: 'Вакансии',
                        ),
                        SizedBox(width: 10),
                        ContainerWidget(
                          color: Color(0xffFFD3BA),
                          text: 'Маркет',
                        ),
                        SizedBox(width: 10),
                        ContainerWidget(
                            color: Color(0xffFFDEDE), text: 'Цветы'),
                        SizedBox(width: 10),
                        ContainerWidget(
                          color: Color(0xffCFF2E3),
                          text: 'Продукты',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color color;
  final String text;
  const ContainerWidget({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      height: 86,
      width: 86,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
