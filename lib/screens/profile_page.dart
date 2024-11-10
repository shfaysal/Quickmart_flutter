import 'package:flutter/material.dart';
// import 'package:flutter_application_1/sign_up.dart';

void main(){
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget{
  const Profile({super.key});
  
  @override
  _ProfileState createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {

  List<String> elements = ["Help", "About","Language","Security Center","Feedback"];
  List<Widget> widgetList = [];
  
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -90),
      child: Stack(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 41, 82),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),
          
          //body content that overlaps the AppBar
          Transform.translate(
            offset: const Offset(0, 150),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -60),
                    child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(                        
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100, // Equivalent to 150.dp
                            height: 100, // Equivalent to 150.dp
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.green,
                                  Colors.white,
                                  Colors.green,
                                  Colors.white,
                                  Colors.green,
                                  Colors.white,
                                  Colors.green,
                                  Colors.white,
                                  Colors.green,
                                  Colors.white,
                                  Colors.green
                                ],
                              ),
                              border: Border.all(
                                width: 5, // Equivalent to 4.dp
                                color: const Color.fromARGB(0, 126, 80, 80), // This is needed to allow gradient
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/sazzad.png', // Make sure to replace with your image path
                                fit: BoxFit.fill,
                                ),
                            ),
                          ),
                          const Text(
                            "Lorem",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                size: 30,
                                color: Colors.red,
                              ),
                              Text(
                                "Dhaka bandesh",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5)
                                ),
                              ),
                            ],
                          ),
                          divider(false),
                          Text(
                            "Balance",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(.6),
                            ),
                            textAlign: TextAlign.center,
                            textHeightBehavior: const TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false
                            ),
                          ),
                          const Text(
                            "\$208.3",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false
                            ),
                          ),
                          divider(true),
                          Column(
                            children: elements.map((element) {
                              return textAndIcon(element);  // Generate a widget for each element
                            }).toList(),  // Convert the iterable to a list of widgets
                          )
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget divider(bool fullwidthOrNot) {
  return Divider(
    thickness: 2,
    indent: fullwidthOrNot ? 0 : 50,
    endIndent: fullwidthOrNot ? 0 : 50,
    color: const Color.fromARGB(255, 158, 150, 150),                 
  );
}

Widget textAndIcon(String str){
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
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                decoration: TextDecoration.none,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Icon(
              color: Colors.black.withOpacity(.5),
              Icons.arrow_forward_ios,
              size: 24, // Set the size of the icon
            ),
          ],
        ),
        // const SizedBox(height: ,),
        divider(true),
      ],
    ),
  );
}