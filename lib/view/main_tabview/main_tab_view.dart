import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:melodio/common/color_extension.dart';
import 'package:melodio/view/home/home_view.dart';
import 'package:melodio/view/songs/songs_view.dart';
import 'package:melodio/view_model/splash_view_model.dart';

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
    var media = MediaQuery.sizeOf(context);

    var splashVM = Get.find<SplashViewModel>();

    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0xff10121D),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 250,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: TColor.primary.withOpacity(0.03),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/img/app_logo.png",
                      width: media.width * 0.17,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "328\nSongs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffC1C0C0),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "52\nAlbums",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffC1C0C0),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "328\nArtis",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffC1C0C0),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              leading: Image.asset(
                "assets/img/m_theme.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Themes",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_ring_cut.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Ringtone Cutter",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),

            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_sleep_timer.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Sleep Timer",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),

            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_eq.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Equalizer",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_driver_mode.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Driver Mode",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_hidden_folder.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Hidden Folder",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),

            ListTile(
              leading: Image.asset(
                "assets/img/m_scan_media.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Scan Media",
                style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const HomeView(),
          const SongsView(),
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
