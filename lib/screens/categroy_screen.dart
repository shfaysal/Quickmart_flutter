import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const CategoryScreenPage());
  // runApp(const MySectionPreviw());
}

class CategoryScreenPage extends StatelessWidget{

  const CategoryScreenPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: CategoryScreen(),
    );
  }
}

class CategoryScreen extends StatefulWidget{
  const CategoryScreen({super.key});

  @override
  _CategroyScreenState createState() => _CategroyScreenState();
}

class MySectionPreviw extends StatelessWidget {
  const MySectionPreviw({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text and Icon Preview',
      home: Scaffold(
        appBar: AppBar(title: const Text('Preview')),
        body: Center(
          child: _buildSidebarIcon(1),
          // child: _iconAndColor(Icons.facebook, Colors.blue,'ইনকাম করুন'),
          // child: _welcomePart(),
          // child: _buildScrollableItem(), // Use your widget here
        ),
      ),
    );
  }
}

class _CategroyScreenState extends State<CategoryScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Category'),
      // ),
      backgroundColor: Colors.white, // Set the background color to white
      body: SafeArea( // Wrap the body in SafeArea
        child: Row(
          children: [
            // Sidebar
            Container(
              width: MediaQuery.of(context).size.width / 4, // Takes 1/4th of the screen width
              color: Colors.grey[200],
              child: _buildOneColumnLayout()
              // ListView(
              //   children: [
              //     _buildSidebarIcon('assets/images/automotive.png', "Automotive"),
              //     _buildSidebarIcon('assets/images/electric_appliance.png', "Appliance"),
              //     _buildSidebarIcon('assets/images/grocery.png', "Grocery"),
              //     _buildSidebarIcon('assets/images/personal_care.png', "Personal care"),
              //     _buildSidebarIcon('assets/images/stationary.png', "Stationary"),
              //     _buildSidebarIcon('assets/images/wardrobe.png', "Fashion"),
              //     _buildSidebarIcon('assets/images/automotive.png', "Automotive"),
              //     _buildSidebarIcon('assets/images/electric_appliance.png', "Appliance"),
              //     _buildSidebarIcon('assets/images/grocery.png', "Grocery"),
              //     _buildSidebarIcon('assets/images/personal_care.png', "Personal care"),
              //     _buildSidebarIcon('assets/images/stationary.png', "Stationary"),
              //     _buildSidebarIcon('assets/images/wardrobe.png', "Fashion"),
              //     _buildSidebarIcon('assets/images/automotive.png', "Automotive"),
              //     _buildSidebarIcon('assets/images/electric_appliance.png', "Appliance"),
              //     _buildSidebarIcon('assets/images/grocery.png', "Grocery"),
              //     _buildSidebarIcon('assets/images/personal_care.png', "Personal care"),
              //     _buildSidebarIcon('assets/images/stationary.png', "Stationary"),
              //     _buildSidebarIcon('assets/images/wardrobe.png', "Fashion"),

              //   ],
              // ),
            ),
            // Main Content
            Expanded(
              child: Column(
                children: [
                  // Page title and search bar combined to take full width
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0), // Space above and below
                    child: Column(
                      children: [

                        // Search bar directly below the page title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Title for product icons
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ALL PRODUCTS',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // All products section with GridView
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: GridView.count(
                  //     shrinkWrap: true, // Important to prevent infinite height error
                  //     crossAxisCount: 4, // 4 items per row
                  //     physics: const NeverScrollableScrollPhysics(), // Disable scrolling inside the grid
                  //     children: [
                  //       _buildCategoryItem('assets/images/shirt.png', 'Male'),
                  //       _buildCategoryItem('assets/images/woman.png', 'Female'),
                  //       _buildCategoryItem('assets/images/mobile_accessories.png', 'Mobile'),
                  //       _buildCategoryItem('assets/images/glasess.png', 'Glasses'),
                  //       _buildCategoryItem('assets/images/watch.png', 'Watch'),
                  //       _buildCategoryItem('assets/images/shirt.png', 'Male'),
                  //       _buildCategoryItem('assets/images/woman.png', 'Female'),
                  //       _buildCategoryItem('assets/images/mobile_accessories.png', 'Mobile'),
                  //       _buildCategoryItem('assets/images/glasess.png', 'Glasses'),
                  //       _buildCategoryItem('assets/images/watch.png', 'Watch'),
                  //       _buildCategoryItem('assets/images/shirt.png', 'Male'),
                  //       _buildCategoryItem('assets/images/woman.png', 'Female'),
                  //       _buildCategoryItem('assets/images/mobile_accessories.png', 'Mobile'),
                  //       _buildCategoryItem('assets/images/glasess.png', 'Glasses'),
                  //       _buildCategoryItem('assets/images/watch.png', 'Watch'),
                  //       _buildCategoryItem('assets/images/watch.png', 'Watch')
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> categories = [
  {'icon': Icons.bike_scooter, 'text': 'Scooter'},
  {'icon': Icons.electrical_services, 'text': 'Electronics'},
  {'icon': Icons.laptop, 'text': 'Laptops'},
  {'icon': Icons.phone_android, 'text': 'Phones'},
  {'icon': Icons.watch, 'text': 'Watches'},
  {'icon': Icons.directions_car, 'text': 'Cars'},
  {'icon': Icons.book, 'text': 'Books'},
  {'icon': Icons.pets, 'text': 'Pets'},
  {'icon': FontAwesomeIcons.tshirt, 'text': 'Clothing'},
  {'icon': FontAwesomeIcons.shoePrints, 'text': 'Footwear'},
  {'icon': Icons.toys, 'text': 'Toys'},
  {'icon': Icons.kitchen, 'text': 'Kitchenware'},
  {'icon': Icons.sports_basketball, 'text': 'Sports Equipment'},
  {'icon': Icons.gif_outlined, 'text': 'Gifts'},
  {'icon': Icons.music_note, 'text': 'Music'},
  {'icon': Icons.videogame_asset, 'text': 'Video Games'},
  {'icon': Icons.home, 'text': 'Home Decor'},
  {'icon': Icons.living, 'text': 'Living Room'},
  {'icon': Icons.bed, 'text': 'Bedding'},
  {'icon': Icons.local_grocery_store, 'text': 'Groceries'},
  {'icon': Icons.health_and_safety, 'text': 'Health & Wellness'},
  {'icon': Icons.microwave, 'text': 'Appliances'},
  {'icon': Icons.hardware, 'text': 'Hardware'},
  {'icon': Icons.cameraswitch, 'text': 'Cameras'},
  {'icon': Icons.local_grocery_store, 'text': 'Supermarkets'},
  {'icon': Icons.access_time, 'text': 'Timepieces'},
  {'icon': Icons.headset, 'text': 'Headphones'},
  {'icon': Icons.dining, 'text': 'Dining'},
  {'icon': Icons.handyman, 'text': 'Tools'},
  {'icon': Icons.accessibility, 'text': 'Accessibility'},
  {'icon': Icons.fitness_center, 'text': 'Fitness'},
];


Widget _buildOneColumnLayout() {

  List<Widget> rows = [];

  for(int i = 0; i < categories.length; i+=1){
    rows.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSidebarIcon(i)
        ],
      )
    );
  }

  // return Column(children: rows,);
  return SingleChildScrollView(child: Column(children: rows,));

}

// Helper method to build sidebar icons with custom images and titles
Widget _buildSidebarIcon(int index) {

  final category = categories[index];

  return InkWell(
    onTap: () {
      print("${category['text']} clicked");
      // Handle the tap event
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(category['icon'], size: 30,), // Use image instead of icon
          SizedBox(height: 5),
          Text(category['text']),
        ],
      ),
    ),
  );
}

// Function to build category item with image and title
Widget _buildCategoryItem(String imagePath, String title) {
  return Column(
    children: [
      Image.asset(imagePath, width: 40, height: 40),
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ],
  );
} 
