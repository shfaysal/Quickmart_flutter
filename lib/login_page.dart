import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_screen.dart';
import 'package:flutter_application_1/sign_up.dart';

class Login extends StatelessWidget {

  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home : Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children:[
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/shopping.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                        "ACCOUNT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ) 
            ),
            Expanded(
              flex: 2,
              child : Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 20
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.red,
                          width: 5
                        ),
                        shape : const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp())
                        );
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape : const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.red,
                            width: 5
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                    
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainScreenPage())
                          );
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Log in With",
                    selectionColor: Colors.green,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 139, 86, 26)
                    ),
                  )
                ],
              )
            )
          ]
        )
      ), 
    );
  }
}

void main() {
  // runApp(const MainApp());
    // runApp(const SplashScreen());
        runApp(const Login());

}