import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0); // Initial state (Home Page)

  void changePage(int index) {
    emit(index); // Update the current index
  }
}