
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_store/Constant/AppColor.dart';
import 'package:panda_store/Screen/Ui/BookingScreen.dart';
import 'package:panda_store/Screen/Ui/FavouriteScreen.dart';
import 'package:panda_store/Screen/Ui/HomeScreen.dart';
import 'package:panda_store/Screen/Ui/ProfileScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override

  int PageIndex = 0;

  List Screens = [
    HomeScreen(),
    BookingScreen(),
    FavouriteScreen(),
    ProfileScreen()
  ];


  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      onTap: (value){
        setState(() {
            PageIndex = value;
        });
      },
      currentIndex: PageIndex,
      backgroundColor: AppColor.AppColors,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedFontSize: 16,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark,) , label: "Booking"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border,) , label: "Favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,) , label: "Profile"),

    ],),
      body: Screens[PageIndex],
    );
  }
}
