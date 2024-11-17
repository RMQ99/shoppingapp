import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/presentation/pages/favorites_page.dart';
import 'package:shopping_app/features/presentation/pages/orders_page.dart';
import 'package:shopping_app/features/presentation/pages/profile_page.dart';
import 'package:shopping_app/features/presentation/pages/support_page.dart';
import 'package:shopping_app/features/presentation/widgets/navigate_bar.dart';
import 'package:shopping_app/features/presentation/widgets/offers.dart';
import 'package:shopping_app/features/presentation/widgets/order_tracking.dart';
import 'package:shopping_app/features/presentation/widgets/product_grid.dart';
import 'package:shopping_app/features/presentation/state/navigation_cubit.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<Widget> _pages = [
    const HomeContent(),
    const OrdersPage(),
    const FavoritesPage(),
    const SupportPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: const Color.fromARGB(100, 239, 228, 232),
          title: BlocBuilder<NavigationCubit, int>(
            builder: (context, state) {
              return state == 0?
              const Text(
                "IST-TUR",
                style: TextStyle(fontSize: 20),
              )
                  : const SizedBox.shrink();
            },
          ),
          leading:
          BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return state == 0?
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_on),
            iconSize: 30,
            color: const Color.fromARGB(100, 218, 142, 168),
          )
            : const SizedBox.shrink();
        },
          ),
          actions: [
    BlocBuilder<NavigationCubit, int>(
    builder: (context, state) {
        return state == 0?
        IconButton(
        onPressed: () {},
        icon: const Icon(Icons.navigate_next),
        iconSize: 25,
        color: const Color.fromARGB(100, 218, 142, 168),
        )
            : const SizedBox.shrink();
        },
    ),
    ],
        ),
        body: BlocBuilder<NavigationCubit, int>(
          builder: (context, state) {
            return _pages[state];
          },
        ),
        bottomNavigationBar: const NavigateBar(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 180, left: 15),
                  margin: const EdgeInsets.only(left: 10),
                  height: 45,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color.fromARGB(100, 218, 142, 168),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Search For Items",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune),
                  color: const Color.fromARGB(100, 218, 142, 168),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: const OrderTracking(
                    title: "Tracking",
                    description: "order number : 2122",
                    date: "10 Dec  15:00",
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Offers",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Row(
                      children: [
                        Text(
                          "All",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(100, 218, 142, 168)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                    iconSize: 15,
                    color: const Color.fromARGB(100, 218, 142, 168),
                  ),
                ],
              ),
            ),
            const Column(
              children: [Offers()],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending Products",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Row(
                      children: [
                        Text(
                          "All",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(100, 218, 142, 168)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                    iconSize: 15,
                    color: const Color.fromARGB(100, 218, 142, 168),
                  ),
                ],
              ),
            ),
            const Column(
              children: [ProductGrid()],
            ),
          ],
        ),
      ),
    );
  }
}

