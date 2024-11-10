import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter_application_1/login_page.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  // SignUp({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();

}

// ignore: must_be_immutable
class _SignUpState extends State<SignUp> {
  // SignUp({super.key});

  late TextEditingController controller;
  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController rePassController;
  // final TextSelectionControls _noPaseControls = NoPasteControls();
  String text = '';
  String email = '';
  bool _isObsercured = true;
  bool isChecked = false;

  @override
  void initState(){
    super.initState();
    controller = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    rePassController = TextEditingController();
  }

  @override
  void dispose(){
    controller.dispose();
    emailController.dispose();
    passController.dispose();
    rePassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // AppBar as a custom top section
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 41, 82),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 10,
                  right: 10,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context); // Navigate back
                        },
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Account details",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(Icons.more_horiz, color: Colors.white),
                        onPressed: () {
                          // Handle action
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Body content that overlaps the AppBar
          Transform.translate(
            offset: const Offset(0, 150), // Adjust to overlap with AppBar
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding : const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20
                ),
                // decoration: BoxDecoration(
                //   boxShadow: [
                //     BoxShadow(
                //       color : Colors.grey.withOpacity(.5),
                //       spreadRadius: 5,
                //       blurRadius: 10, // Blur radius
                //       offset: const Offset(5, 5), // Offset in X and Y direction
                //     )
                //   ]
                // ),
                color: Colors.black,
                child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextField(
                    controller : controller,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black
                    ),
                    decoration: const InputDecoration(
                      labelText: "don't Your Name",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ) 
                    ),
                    onChanged: (newText) {
                      setState(() {
                        text = newText;
                      });
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller : emailController,
                    decoration: const InputDecoration(
                      labelText: "Enter Your Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ) 
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (emailtext) {
                      setState(() {
                        email = emailtext;
                      });
                    },
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller : passController,
                    obscureText: _isObsercured,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ) 
                    ),
                    onChanged: (passText) {
                      setState(() {
                        // email = passText;
                      });
                    },
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red
                    ),
                  ),

                  TextField(
                    controller : rePassController,
                    obscureText: _isObsercured,
                    // selectionControls: _noPaseControls,
                    decoration: const InputDecoration(
                      labelText: "Re-Type Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ) 
                    ),
                    onChanged: (rePassText) {
                      setState(() {
                        // email = passText;
                      });
                    },
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked, // Current value of the checkbox
                        // activeColor: Colors.white,
                        // checkColor: Colors.red,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!; // Update the state
                          });
                        },
                      ),
                      const Text(
                        "Accept Terms & Conditions",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 247, 41, 82),
                        // side: const BorderSide(
                        //   color: Colors.red,
                        //   width: 5
                        // ),
                        shape : const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: (){
                         Navigator.push(
                         context,
                          MaterialPageRoute(builder: (context) => const Login())
                        );
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
