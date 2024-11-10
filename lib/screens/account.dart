import 'package:flutter/material.dart';

void main(){
  runApp(AccountPageScreen());
}

class AccountPageScreen extends StatelessWidget {
  const AccountPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountState createState() => _AccountState();
}



class _AccountState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, // Sets only the background of the screen to white
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info section
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.orange[100],
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(Icons.person, size: 30, color: Colors.orange),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BG191736565',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                              fontSize: 20, 
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                              ),
                        ),
                        Text(
                          'New User',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.red,
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // VIP Club
              Container(
                color: Colors.black12,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('VIP CLUB',
                        style: TextStyle(decoration: TextDecoration.none,color: Colors.orange, fontSize: 16)),
                    Text('Save \$199 a year',
                        style: TextStyle(decoration: TextDecoration.none,color: Colors.black, fontSize: 18)),
                  ],
                ),
              ),

              // Orders Section
              // const SectionTitle(
              //   title: "Orders",
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Orders'),
                    // Text(
                    //   'Orders',
                    //   style: TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.black,
                    //     fontSize: 18
                    //   ),
                    // ),
                    SizedBox(height: 5,),
                    OrderRow(),
                    SizedBox(height: 5,),
                    // Wallet Section
                    const SectionTitle(title: 'Wallet'),
                    // Text(
                    //   'Wallet',
                    //   style: TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.black,
                    //     fontSize: 18
                    //   ),
                    // ),
                    WalletSection(),

                    // Fun Ways to Save Section
                    const SectionTitle(title: "Fun Ways to Save"),
                    // const Text(
                    //   'Fun ways to save',
                    //   style: TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.black,
                    //     fontSize: 18
                    //   ),
                    // ),
                    // Text(
                    //   'Fun Ways to save',
                    //   style: TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.black
                    //   ),
                    // ),
                    FunWaysToSaveGrid(),

                    // Services Section
                    const SectionTitle(title: "Services"),
                    // const Text(
                    //   'Services',
                    //   style: TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.black,
                    //     fontSize: 18
                    //   ),
                    // ),
                    ServicesGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

// Section Title Widget
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
         fontWeight: FontWeight.bold,
         decoration: TextDecoration.none,
         color: Colors.black
        ),
      ),
    );
  }
}

// Orders Row Widget
class OrderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconLabelButton(icon: Icons.pending, label: 'Pending'),
        IconLabelButton(icon: Icons.inbox, label: 'Processing'),
        IconLabelButton(icon: Icons.local_shipping, label: 'Shipped'),
        IconLabelButton(icon: Icons.reviews, label: 'Review'),
      ],
    );
  }
}

// Wallet Section Widget
class WalletSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Points: 0",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 12
            ),
         ),
          Text(
            "My BGpay: +50",
            style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 12
                ),
            ),
        ],
      ),
    );
  }
}

// Fun Ways to Save Grid
class FunWaysToSaveGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(), // Disable scrolling for the GridView
        shrinkWrap: true, // Allow the GridView to wrap its content
        crossAxisCount: 4, // 4 icons per row
        childAspectRatio: 1, // Adjust the aspect ratio as needed
        children: [
          IconLabelButton(icon: Icons.card_giftcard, label: 'Get It Free'),
          IconLabelButton(icon: Icons.group, label: 'Group Buy'),
          IconLabelButton(icon: Icons.percent, label: 'Get 10% Off'),
          IconLabelButton(icon: Icons.games, label: 'Game'),
          IconLabelButton(icon: Icons.check_circle, label: 'Check In'),
          IconLabelButton(icon: Icons.live_tv, label: 'Live'),
        ],
      ),
    );
  }
}

// Services Grid
class ServicesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(), // Disable scrolling for the GridView
        shrinkWrap: true, // Allow the GridView to wrap its content
        crossAxisCount: 4, // 4 icons per row
        childAspectRatio: 1, // Adjust the aspect ratio as needed
        children: [
          IconLabelButton(icon: Icons.location_on, label: 'Address Book'),
          IconLabelButton(icon: Icons.help_center, label: 'Help Center'),
          IconLabelButton(icon: Icons.reviews, label: 'My Reviews'),
          IconLabelButton(icon: Icons.build, label: 'Return/Repair'),
          IconLabelButton(icon: Icons.settings, label: 'Settings'),
          IconLabelButton(icon: Icons.poll, label: 'Survey'),
          IconLabelButton(icon: Icons.feedback, label: 'Feedback'),
        ],
      ),
    );
  }
}

// IconLabelButton reusable component
class IconLabelButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconLabelButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // This width is for the Column's content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
        children: [
          Icon(icon, size: 30, color: Colors.orange),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 10,
              color: Colors.black
            ),
            textAlign: TextAlign.center, // Center-align the text
          ),
        ],
      ),
    );
  }
}
