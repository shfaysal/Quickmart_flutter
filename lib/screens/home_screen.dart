import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/main_screen.dart';
import 'package:flutter_application_1/screens/categroy_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gif_view/gif_view.dart';
import 'package:marquee/marquee.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


void main(){
  runApp(const HomeScreenPage());
  // runApp(const MySectionPreviw());
}

class HomeScreenPage extends StatelessWidget{

  const HomeScreenPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
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

final List<Map<String, dynamic>> gifandicons = [
  {'gif' : 'assets/gifs/shoppingf.gif', 'text': 'Shopping'},
  {'gif' : 'assets/gifs/food.gif', 'text': 'Food'},
  {'gif' : 'assets/gifs/grocery.gif', 'text': 'Grocery'},
  {'gif' : 'assets/gifs/pharmacy.gif', 'text': 'Pharmacy'},
  {'gif' : 'assets/gifs/gift.gif', 'text': 'Gift'},
  {'gif' : 'assets/gifs/ride.gif', 'text': 'Ride Share'},
  {'gif' : 'assets/gifs/shoppingf.gif', 'text': 'Top Up'},
  {'gif' : 'assets/gifs/parcel.gif', 'text': 'Parcel'}
];


class _HomeScreenState extends State<HomeScreen> {

  List<Widget> rows = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _welcomePart(),
          SizedBox(height: 10,),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            color: const Color.fromARGB(255, 233, 23, 8),
            child: _buildMarquee(),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 90,
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _iconAndColor(Icons.facebook, Colors.blue,'গ্রুপে যুক্ত হন'),
                  _iconAndColor(Icons.video_library, const Color.fromARGB(255, 228, 25, 11), 'ভিডিও দেখুন'),
                  _iconAndColor(Icons.question_answer, const Color.fromARGB(248, 182, 138, 44), 'প্রশ্ন এন্ড উত্তর'),
                  _iconAndColor(FontAwesomeIcons.dollarSign, const Color.fromARGB(249, 253, 161, 40),'ইনকাম করুন')
                ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            color: const Color.fromARGB(255, 243, 242, 242),
            child : _buildColumnLayout(context,4)
          ),
          _buildColumnLayout(context,3)
          // Expanded(
          //   child: GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 1,
          //     mainAxisSpacing: 1
          //     ),
          //     itemCount: categories.length,
          //     itemBuilder: (context, index){
          //       return _buildScrollableItem(index);
          //     },
          //   ), 
          // )
          
        ],
      ),
      ) 
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

Widget _buildColumnLayout(BuildContext context, int num) {
    List<Widget> rows = [];

    if (num == 3){
      for (int i = 0; i < categories.length; i += num) {
      // Create a Row for each pair of categories
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildScrollableItem(context,i), // First column item
            if (i + 1 < categories.length) // Check if the next item exists
              _buildScrollableItem(context,i+1), // Second column item
            if (i + 2 < categories.length) // Check if the next item exists
              _buildScrollableItem(context, i+2),
            ],
          ),
        );
      }
    }else if(num == 4){
      for (int i = 0; i < gifandicons.length; i += num) {
      // Create a Row for each pair of categories
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildGifAndText(i), // First column item
            if (i + 1 < gifandicons.length) // Check if the next item exists
              _buildGifAndText(i+1), // Second column item
            if (i + 2 < gifandicons.length) // Check if the next item exists
              _buildGifAndText(i+2),
            if (i + 3 < gifandicons.length) // Check if the next item exists
              _buildGifAndText(i+3),
            ],
          ),
        );
      }
    }

    return Column(children: rows);
  }


//Primary Marquee text
Widget _buildMarquee() {
  return Marquee(
    text: "Don't ask any discount. We have just started our business                  ",
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
      decoration: TextDecoration.none
    ),
  );
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
          child: _buildGifAndText(1),
          // child: _iconAndColor(Icons.facebook, Colors.blue,'ইনকাম করুন'),
          // child: _welcomePart(),
          // child: _buildScrollableItem(), // Use your widget here
        ),
      ),
    );
  }
}

Widget _welcomePart(){
  return Container(
    height: 120,
    width: double.infinity,
    color: const Color.fromARGB(230, 241, 160, 37),
    padding: const EdgeInsets.only(
      top: 20,bottom: 20, left: 15, right: 15
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.,
      children: [
        RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
            style:  TextStyle(fontSize: 14, fontFamily: 'Hind Siliguri'), // Default style
            children: [
              TextSpan(
                text: 'বাংলাদেশের প্রথম সুপার অ্যাপ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextSpan(
                text: '\nএবং ডিজিটাল বিজনেস মার্কেটপ্লেসে',
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  height: 2,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: '\nআপনাকে স্বাগতম ',
                style: TextStyle(
                  height: 1.2,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 80,
          color: Colors.white,
          child: Image.asset(
            'assets/images/sazzad.png'
          )
        ),
      ],
    ),
  );
}


//helper function to build the scrollable items
Widget _buildScrollableItem(BuildContext context, int index){
  final category = categories[index];
  
  return Material(
    child: InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CategoryScreenPage())
      );
      print("clicked on: ${category['text']}");
    },
    child: Container(
    padding: const EdgeInsets.all(10),
    color: Colors.white,
    width: 120,
    height: 120,
    // color: Colors.green,
    child: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            offset: const Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            category['icon'],
            size: 50,
            color: Colors.black,
          ),
          const SizedBox(height: 10,),
          Text(
            category['text'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  ),
  ),
  );
}

//helper function to build the scrollable items
Widget _buildGifAndText(int index){
  final category = gifandicons[index];
  
  return Material(
    child: InkWell(
      onTap: () {
        print("clicked on ${category['text']}");
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        width: 95,
        height: 100,
        // color: const Color.fromARGB(255, 180, 177, 177),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                offset: const Offset(0, 0),
                blurRadius: 5,
                spreadRadius: 1
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   category['icon'],
              //   size: 50,
              //   color: Colors.black,
              // ),
              GifView.asset(
                category['gif'],
                height: 60,
                width: 60,
                // color: Colors.black,
              ),
              Text(
                category['text'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    )
  );
}

Widget _iconAndColor(IconData icon, Color color, String text){
  return Material(
    child: InkWell(
      onTap: () {
        print("clicked on : $text");
      },
      child: Container(
        height: 80,
        width: 70,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle
              ),
              child: ClipOval(
                child:  Icon(
                icon,
                color: Colors.white,
              ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black.withOpacity(.7),
                decoration: TextDecoration.none,
                // fontWeight: FontWeight.bold,
                height: 2
              ),
            )
          ],
        ),
      ),
    ),
  );
}