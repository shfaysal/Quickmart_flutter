import 'package:flutter/material.dart';
import 'login_page.dart';

void main(){
  runApp(const SplashScreen());
}
class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // var count = 0;

    return Directionality(
      textDirection: TextDirection.ltr,
       child: Container(
      color: const Color.fromARGB(255, 190, 27, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

       children: <Widget> [
          const SizedBox(height: 100,),
          Image.asset(
            'assets/images/shopping.png',
             width: 200,
             height: 300,
          ),
          // const SizedBox(height: 0),
          const Text(
            "The Store of your\ndreams. You will find\n here what you need",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color : Colors.white,
              decoration: TextDecoration.none
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape : const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onPressed: (){
              // print("Clicked ${count++}");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login())
                );
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: const Text(
              "START SHOPPING",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          )
       ], 
      ),
    ), 
    ); 
  }
}
