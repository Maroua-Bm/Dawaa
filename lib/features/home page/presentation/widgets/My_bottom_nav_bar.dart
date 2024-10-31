import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/features/home%20page/categorie_screen.dart';
import 'package:myapp/features/home%20page/pharmacie_screen.dart';
import 'package:myapp/features/home%20page/presentation/home_screen.dart';
import 'package:myapp/features/home%20page/presentation/widgets/allpharm.dart';
import 'package:myapp/features/home%20page/reminder_screen.dart';

class My_bottom_nav_bar extends StatefulWidget {
   My_bottom_nav_bar({
    Key? key,
  }) : super(key: key);
 
  @override
  State<My_bottom_nav_bar> createState() => _My_bottom_nav_barState();
}


class _My_bottom_nav_barState extends State<My_bottom_nav_bar> {
  List pages = [
     homescreen(),
    categoriescreen(),
    pharmaciescreen(),
    reminderscreen(),

  ];
   int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize:
              0, //because of the errors that show when u click under the bottom
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor:kbuttoncolor, //icons color
          unselectedItemColor:kunselectedcolor,  //unselected icons color
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
           label: 'home',       
              icon: Icon(
            Icons.house_rounded,
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
                label:'rounded' ,
                icon: Icon(
                  Icons.grid_view_rounded,
                  size: 37,
                )),

            BottomNavigationBarItem(
               label: 'medical',
                icon: Icon(
                  Icons.medical_services_rounded,
                  size: 35.0,
                )),
            BottomNavigationBarItem(
              label: 'reminder',
                icon: Icon(
                  Icons.access_time_filled,
                  size: 35.0,
                )),
          ]),
    );


  }
}