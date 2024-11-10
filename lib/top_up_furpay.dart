
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screens/profile_page.dart';


void main(){
  runApp(const TopUpFurpayPage());
}

class TopUpFurpayPage extends StatelessWidget {

  const TopUpFurpayPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: TopUpFurpay(),
    );
  }
}

class TopUpFurpay extends StatefulWidget {
  const TopUpFurpay({super.key});

  @override
  _TopUpFurpayState createState() => _TopUpFurpayState();
}


class _TopUpFurpayState extends State<TopUpFurpay>{
  @override
  Widget build(BuildContext context) {
    //  double screenWidth = MediaQuery.of(context).size.width;
     List<String> elements = ["Mobile Banking", "SMS Banking", "PawnShop","Internet Banking"];
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(
            top: 50,bottom: 20, left: 20, right: 20 
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: TextStyle(
                  // backgroundColor: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.8),
                ),
                textAlign: TextAlign.start,
              ),
              const Text(
                "\$208.3",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10,),
              divider(true),
              const SizedBox(height: 10,),
              Container(
                height: 140,
                width: double.infinity,
                // padding: const EdgeInsets.symmetric(vertical: 20),
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildScrollableItem(index, 40);
                  } 
                ) 
                    
              ),

              const SizedBox(height: 10,),
              const Text(
                "Payment Method",
                style: TextStyle(
                  // backgroundColor: Colors.amber,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
              // _icon(Icons.arrow_forward_ios,Offset(screenWidth-50,-140)),
              // _icon(Icons.arrow_back_ios,const Offset(-20, -162)),
              const SizedBox(height: 10,),
              Column(
                children: elements.map((element) {
                  return textAndIconWithoutDivider(element);  // Generate a widget for each element
                }).toList(),  // Convert the iterable to a list of widgets
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

Widget _icon(IconData icon, Offset offset){
  return Transform.translate(
    offset: offset,
    child : Container(
      height: 24,
      width: 24,
      child : IconButton(
        iconSize: 24,
        icon: Icon(icon),
        onPressed: () {
          // Handle back action
        },
      ),
    ),
  );
}

//helper function to build the scrollable items
Widget _buildScrollableItem(int index, double itemwidth){
  return Container(
    padding: const EdgeInsets.all(10),
    width: 100,
    height: 200,
    // color: Colors.green,
    child: Column(
      children: [
        Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
            color: Colors.black.withOpacity(.1),
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 1
            )
          ] 
        ),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              // Container with centered image
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 3,
                    color: Colors.red
                  ),
                ),
                child: const Center(
                  child: Text(
                    "\$",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
              
              // Text below the container
              const SizedBox(height: 5),
              Text(
                "Item ${index + 1}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                  ),
              ),
            ],
          ), 
        ),
        const SizedBox(height: 5,),
        const Expanded(
          child: Center(
          child: Text(
            "\$2323.1",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ),
      ],
    )
  ); 
}

Widget textAndIconWithoutDivider(String str){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              str,
              style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 24, // Set the size of the icon
            ),
          ],
        ),
        // const SizedBox(height: ,),
        // divider(true),
      ],
    ),
  );
}