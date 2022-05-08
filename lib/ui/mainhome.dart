import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/indicator/round_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:tilda/const/app_colors.dart';

class MainHome extends StatefulWidget {
  MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabBarController = TabController(length: 4, vsync: this);
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            color: AppColors.blackColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Spoghtlight',
                  style: TextStyle(
                      fontFamily: 'Script',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  // padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[350],
                  ),
                  height: 40,
                  width: double.infinity,
                  child: Container(
                    color: Theme.of(context).cardColor,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextField(
                      onSubmitted: (value) {},
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Feather.search,
                            size: 19,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 20,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.tiktokColor,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5))),
                              child: const Center(
                                child: Icon(
                                  Feather.search,
                                  color: Colors.white,
                                  size: 19,
                                ),
                              ),
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: 'Search by keyword'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TabBar(controller: _tabBarController,
              // indicator:
              //     CircleTabIndicator(color: Colors.white, radius: 5),
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.grid_view_outlined,
                    color: Colors.grey,
                  ),
                  text: 'All',
                ),
                Tab(
                  icon: Icon(
                    Icons.place,
                    color: Colors.grey,
                  ),
                  text: 'Places',
                ),
                Tab(
                  icon: Icon(
                    Icons.nature,
                    color: Colors.grey,
                  ),
                  text: 'Space',
                ),
                Tab(
                  icon: Icon(
                    Icons.moving_rounded,
                    color: Colors.grey,
                  ),
                  text: 'More',
                ),
              ]),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 8, right: 8),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: TabBarView(controller: _tabBarController, children: [
                Text('data'),
                Text('data2'),
                Text('data2'),
                GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 55,
                      childAspectRatio: 1,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 25,
                    ),
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 25,
                          width: 450,
                          decoration: BoxDecoration(
                              color: AppColors.crayolaColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/folder-fill.svg',
                                  color: Colors.white60,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  ' posts',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 25,
                          width: 450,
                          decoration: BoxDecoration(
                              color: AppColors.encoreColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/heart-fill.svg',
                                  color: Colors.white60,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'likes hearts',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 25,
                          width: 450,
                          decoration: BoxDecoration(
                              color: AppColors.skyColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/eye-fill.svg',
                                  color: Colors.white60,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'all views',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )),
                    ]),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
