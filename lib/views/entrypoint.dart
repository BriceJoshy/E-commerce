import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/controllers/tab_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              Container(
                height: height,
                width: width,
                color: kOffWhite,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black26),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      onTap: (value) => {
                        print(value),
                      },
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.search),
                          label: 'Search',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.shopping_cart),
                          label: 'Cart',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person),
                          label: 'Profile',
                        ),
                      ],
                      selectedItemColor: kWhite,
                      unselectedItemColor: kGray,
                      backgroundColor: kPrimary,
                    )),
              )
            ],
          ),
        ));
  }
}
