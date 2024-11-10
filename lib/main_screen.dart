import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/account.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/profile_page.dart';
import 'package:flutter_application_1/screens/categroy_screen.dart';

void main(){
  runApp(const MainScreenPage());

}

class MainScreenPage extends StatelessWidget{
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  final List<Widget> _pages =  [
    HomeScreenPage(),
    CategoryScreen(),
    AccountScreen(),
    // ProfilePage()
    AccountPageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // final currentIndex = context.watch<PageIndexNotifier>().currentIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(_currentIndex),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        backgroundColor: const Color.fromARGB(255, 247, 41, 82),
        leading: _currentIndex == 0
            ? null
            : IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                
              },
            ),
        centerTitle: true,
        actions: [
          IconButton(
            iconSize: 40,
            color: Colors.white,
            onPressed: (){
              setState(() {
                _currentIndex = _currentIndex == 0 ? 1 : 2;
              });
            },
             icon: const Icon(Icons.more_horiz_rounded),
             tooltip: 'Three dots',
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
            )
        ),
        toolbarHeight: 80,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: const Color.fromARGB(255, 247, 41, 82),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem> [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',  
              height: 20,
              width: 20,
              color: _currentIndex == 3
                ? const Color.fromARGB(255, 247, 41, 82)
                : Colors.black.withOpacity(.6),
            ),
            
            label: 'Account',
          ),
          // BottomNavigationBarItem(
          //   backgroundColor: Colors.black,
          //   icon: Icon(Icons.home_filled),
          //   label: 'Home',
          // )
        ],
        // currentIndex: _currentIndex,
      ),
      ),
      body: _pages[_currentIndex],
    );
  }

  String _getTitle(int index){
    switch(index) {
      case 0: return 'Home';
      case 1: return 'Cart';
      case 2: return 'Search';
      case 3: return 'Account';
      default: return '';
    }
  }
  
}

// Define the individual screens as StatelessWidgets.
class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Category Screen'));
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Account Screen'));
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Account Screen'));
  }
}
