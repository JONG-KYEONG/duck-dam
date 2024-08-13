import 'package:flutter/material.dart';
import 'package:frontend/widgets/custom_app_bar.dart';
import 'package:frontend/colors/app_colors.dart';
import 'package:frontend/widgets/custom_bottom_navigation_bar.dart';
import 'package:frontend/widgets/home_recommend_list.dart';
import 'package:frontend/widgets/search_box.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text('data'),
              SizedBox(
                height: 200,
                child: HomeRecommendList(),
              ),
              SearchBox(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
