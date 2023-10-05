import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/my_resume_view/screens/my_resume_screen.dart';
import 'package:ai_resume_builder/views/profile_page_view/screens/profile_screen.dart';
import 'package:ai_resume_builder/views/template_view/screens/template_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List pages = [
    const TemplateScreen(),
    // const Center(
    //   child: Text('My Resume'),
    // ),
    //const MyResumeScreen(),
    // const Center(
    //   child: Text('Profile'),
    // ),
    const ProfilePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: WillPopScope(
        onWillPop: () async {
          if (_currentIndex > 0) {
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: SizedBox(
            height: 70,
            width: double.maxFinite,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              selectedFontSize: 12.0,
              selectedItemColor: AppColor.selectedItem,
              selectedLabelStyle: const TextStyle(height: 1.5),
              unselectedItemColor: Colors.white,
              backgroundColor: AppColor.bottomNavigationBar,
              onTap: (index) {
                if (mounted) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImagePath.templateIcon,
                    color: _currentIndex == 0
                        ? AppColor.selectedItem
                        : Colors.white,
                  ),
                  label: 'Templates',
                ),
                // BottomNavigationBarItem(
                //   icon: Image.asset(
                //     ImagePath.openedFolderIcon,
                //     color: _currentIndex == 1
                //         ? AppColor.selectedItem
                //         : Colors.white,
                //   ),
                //   label: 'My Resumes',
                // ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImagePath.profileIcon,
                    color: _currentIndex == 1
                        ? AppColor.selectedItem
                        : Colors.white,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: pages[_currentIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
