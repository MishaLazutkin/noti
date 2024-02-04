import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noti/widgets/tabs.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications',style: TextStyle(color: Colors.white),),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height+20),
            child: Container(
              height: 80,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Colors.white,
                ),
                child: TabBar(
                   padding:  const EdgeInsets.symmetric(vertical: 4.0,horizontal: 4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),

                    color: Color.fromRGBO(106, 77, 186, 1),
                  ),
                  tabs:     [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'lib/assets/icons/one_time.svg',
                            color: Colors.white,
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 7,),
                          Text('One-time'),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'lib/assets/icons/recurring.svg',
                            color: Colors.white,
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 7,),
                          Text('Recurring'),
                        ],
                      ),

                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Basic Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: Text(
                'Advanced Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  PreferredSize buildTabs() {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,

                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    color: Color.fromRGBO(106, 77, 186, 1),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [

                    Tab(
                      text: 'One-time',
                    ),

                    Tab(
                      text: 'Recurring',
                    ),
                  ],
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // first tab bar view widget
                    Center(
                      child: Text(
                        'Place Bid',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // Widget _tabs() {
  //   return Container(
  //     height: 44,
  //     child: AppBar(
  //       primary: false,
  //       automaticallyImplyLeading: false,
  //       centerTitle: false,
  //       elevation: 0.0,
  //       backgroundColor: AppColor.backgroundPageBody,
  //       bottom: BubbleTabBar(
  //         controller: _tabController,
  //         isScrollable: false,
  //         labelStyle: AppTextStyle.tabSelectedTitle,
  //         unselectedLabelStyle: AppTextStyle.tabUnselectedTitle,
  //         headerWidget: Container(),
  //         indicator: BoxDecoration(
  //             color: Colors.white, borderRadius: BorderRadius.circular(6)),
  //         tabs: [
  //           _individualTab('Projects'),
  //           _individualTab('Due Date'),
  //           _individualTab('Priority')
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
