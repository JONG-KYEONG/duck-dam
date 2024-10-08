import 'package:flutter/material.dart';
import 'package:frontend/colors/app_colors.dart';
import 'package:frontend/widgets/custom_bottom_navigation_bar.dart';
import 'package:frontend/widgets/my_app_bar.dart';
import 'package:frontend/widgets/bookmark_list_togle.dart';
import 'package:frontend/widgets/my_page_function_list.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      backgroundColor: AppColors.mainWhiteColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 70.0,
            ),
            child: Column(
              children: [
                BookmarkListTogle(),
                SizedBox(
                  height: 10,
                ),
                MyPageFunctionList(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
