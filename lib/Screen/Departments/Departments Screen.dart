import 'package:flutter/material.dart';

import '../../Widget/ImageProfile.dart';
import '../../Widget/Product Department.dart';
import '../../Widget/Search.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF08063A),
          ),
        ),
        title: const Text(
          'Sections',
          style: TextStyle(
            color: Color(0XFFFF3D00),
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 100,
        actions: const [
          ImageProfile(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
        ),
        child: Column(
          children: [
            const Search(),
            Expanded(
              child: GridView(
                padding: const EdgeInsetsDirectional.only(
                  top: 40,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 29,
                  childAspectRatio: 135 / 255,
                ),
                children: [
                  Product(
                    image: 'images/purger1.png',
                    title: 'Chicken Burger',
                    price: '\$15',
                    function: () {
                      Navigator.pushNamed(
                          context, '/DetailsChickenBurgerScreen');
                    },
                  ),
                  Product(
                    image: 'images/pngegg (7).png',
                    title: 'Beef  Burger',
                    price: '\$10',
                    function: () {
                      Navigator.pushNamed(
                          context, '/DetailsChickenBurgerScreen');
                    },
                  ),
                  Product(
                    image: 'images/pizza1.png',
                    title: 'Italian Pizza',
                    price: '\$5',
                    function: () {
                      Navigator.pushNamed(
                          context, '/DetailsChickenBurgerScreen');
                    },
                  ),
                  Product(
                    image: 'images/pizza3.png',
                    title: 'Cheese Pizza',
                    price: '\$20',
                    function: () {
                      Navigator.pushNamed(
                          context, '/DetailsChickenBurgerScreen');
                    },
                  ),
                  Product(
                    image: 'images/pngegg3.png',
                    title: 'Cheese Burger',
                    price: '\$25',
                    function: () {
                      Navigator.pushNamed(
                          context, '/DetailsChickenBurgerScreen');
                    },
                  ),
                  Product(
                    image: 'images/pizza2.png',
                    title: 'Pizza Margherita',
                    price: '\$26',
                    function: () {},
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
