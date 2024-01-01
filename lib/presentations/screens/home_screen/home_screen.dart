import 'package:coffee_shop_app/presentations/screens/home_screen/widgets/home_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CoffeeHomeScreen extends StatefulWidget {
  const CoffeeHomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CoffeeHomeScreen> createState() => _CoffeeHomeScreenState();
}

class _CoffeeHomeScreenState extends State<CoffeeHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Text(
            "Coffee Beans",
            style: textTheme.titleLarge?.copyWith(
              color: colorScheme.onPrimary,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          HomeTabView(),
          Center(
            child: Text("Find your best Cafe"),
          ),
          Center(
            child: Text("Promo"),
          ),
          Center(
            child: Text("Profile"),
          ),
        ],
      ),

      // bottomNavigationBar is a property of Scaffold
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _tabController.animateTo(index);
        },
        backgroundColor: colorScheme.surface,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.house_solid),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(ZondIcons.coffee),
            // icon: Icon(PixelArtIcons.coffee),
            label: 'Favorite',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.tag_solid),
            // icon: Icon(PixelArtIcons.coffee),
            label: 'Favorite',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.user_solid),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        selectedItemColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
