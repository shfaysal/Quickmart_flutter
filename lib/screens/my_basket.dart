import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

void main(){
  runApp(const MyBasketPreview());
}

class MyBasketPage extends StatelessWidget{
  const MyBasketPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: MyBasketScreen(),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

class MyBasketScreen extends StatefulWidget{
  const MyBasketScreen({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _MyBasketScreenState createState() => _MyBasketScreenState();
  
}

class _MyBasketScreenState extends State<MyBasketScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(

    );
    // TODO: implement build
    // throw UnimplementedError();
  }

}


class MyBasketPreview extends StatelessWidget {
  const MyBasketPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text and Icon Preview',
      home: Scaffold(
        appBar: AppBar(title: const Text('Preview')),
        body: Center(
          // child: _buildScrollableItem(), // Use your widget here
          child: _basketCard(),
        ),
      ),
    );
  }
}

Widget _basketCard(){
  return Padding(
      padding: const EdgeInsets.all(10.0), // Add some padding around the row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between the two sections
        children: [
          // Left side: Image and Text
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 80,
                width: 80,
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
              child: 
              // GifView.asset(
              //   // color: Colors.black,
              //   'assets/gifs/shoppings.gif', 
              // )
              Image.asset(
                'assets/images/shopping.png'
              )
              ),
              const SizedBox(width: 10), // Space between image and text
              const Text(
                'Product Name',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          // Right side: - Text +
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  // Handle decrement action
                },
              ),
              const Text(
                '1', // Quantity
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Handle increment action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

Widget _basketCard1(){

  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    height: 90,
    width: double.infinity,
    color: Colors.amber,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [
      Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
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
        child: Image.asset(
          'assets/images/shopping.png'
        )
        ),
        const SizedBox(width: 10,),
        Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sneakers',
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '\$45',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ],
    ),
  );
}

