import 'package:flutter/material.dart';
import 'package:melodio/common/color_extension.dart';
import 'package:melodio/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  static const String name = '/home-tab-view';

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController?.addListener(() {
      _currentIndex = _tabController?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          const HomeView(),
          Container(child: Center(child: Text("Songs"))),
          Container(child: Center(child: Text("Settings"))),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: TColor.bg,
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: TColor.primary,
            labelStyle: const TextStyle(fontSize: 10),
            unselectedLabelColor: TColor.primaryText28,
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            tabs: [
              Tab(
                text: "Home",
                icon: Image.asset(
                  _currentIndex == 0
                      ? "assets/img/home_tab.png"
                      : "assets/img/home_tab_un.png",
                  width: 20,
                  height: 20,
                ),
              ),
              Tab(
                text: "Songs",
                icon: Image.asset(
                  _currentIndex == 1
                      ? "assets/img/songs_tab.png"
                      : "assets/img/songs_tab_un.png",
                  width: 20,
                  height: 20,
                ),
              ),
              Tab(
                text: "Settings",
                icon: Image.asset(
                  _currentIndex == 2
                      ? "assets/img/setting_tab.png"
                      : "assets/img/setting_tab_un.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
