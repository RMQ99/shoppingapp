import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/navigation_cubit.dart';



class NavigateBar extends StatelessWidget {
   const NavigateBar({super.key});


  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<NavigationCubit>().state;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => context.read<NavigationCubit>().changePage(index),
      backgroundColor: const Color.fromARGB(255, 239, 228, 232),
      elevation: 2,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromARGB(100, 218, 142, 168),
      unselectedItemColor: Colors.grey,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_circle_outline),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
