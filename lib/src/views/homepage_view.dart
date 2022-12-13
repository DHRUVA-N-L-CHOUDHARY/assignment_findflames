import 'package:findflames/src/utils/constants/strings.dart';
import 'package:findflames/src/views/display_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int tabIndex = 0;
  final MenuController menuController = Get.put(MenuController());
  
  void changeTabIndex(int index)
  {
    setState(() {
      tabIndex = index;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: tabIndex,
          children: const [
            DisplayPageview(),
            DisplayPageview(),
            DisplayPageview(),
            DisplayPageview(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        onTap: changeTabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: tabIndex,
        items: [
          _bottomNavigationBarItem(
            icon: home,
          ),
          _bottomNavigationBarItem(
            icon: globalsearch,
          ),
          _bottomNavigationBarItem(
            icon: calen,
          ),
          _bottomNavigationBarItem(
            icon: messages,
          )
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required String icon}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.1, color: Colors.grey, ),
      activeIcon: Image.asset(icon, scale:1.1,  color: const Color.fromRGBO(255, 224, 237, 1)),
      label: "",
    );
  }
}
