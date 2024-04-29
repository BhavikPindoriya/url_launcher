import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:e_cart_ecommerce/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? userName;
  String? email;
  String? moNumber;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    userName = await Utils.getename() ?? "";
    email = await Utils.getemail() ?? "";
    moNumber = await Utils.getmobile() ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Welcome $userName",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: redColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: Homeimages.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.2 - 33,
                        width: MediaQuery.of(context).size.width * 0.4 - 10,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(
                          image: AssetImage(Homeimages[index]),
                          height: 90,
                        )),
                    3.heightBox,
                    ElevatedButton(
                        onPressed: () {
                          _navigateToPage(context, index);
                        },
                        child: Text(Homename[index]))
                  ],
                ),
              );
            },
          )),
      drawer: NavigationDrawer(
        userName: userName,
        email: email,
        MoNumber: moNumber,
        userDetails: [
          '$userName',
          '$email',
          '$moNumber',
        ],
      ),
    );
  }
}

void _navigateToPage(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, '/firstPage');
      break;
    case 1:
      Navigator.pushNamed(context, '/secondPage');
      break;
    case 2:
      Navigator.pushNamed(context, '/thirdPage');
      break;
    case 3:
      Navigator.pushNamed(context, '/fourthPage');
      break;
    case 4:
      Navigator.pushNamed(context, '/fourthPage');
      break;
    case 5:
      Navigator.pushNamed(context, '/fourthPage');
      break;
    default:
      break;
  }
}

class NavigationDrawer extends StatelessWidget {
  String? userName;
  String? email;
  String? MoNumber;
  final List<String?> userDetails;
  NavigationDrawer(
      {super.key,
      this.userName,
      this.email,
      this.MoNumber,
      required this.userDetails});

  List Homeicon = [
    Icon(Icons.edit),
    Icon(Icons.edit),
    Icon(Icons.edit).opacity(value: 0.5),
  ];

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildHeader(context),
                  buildMenuItems(context),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 210 + MediaQuery.of(context).padding.top,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: InkWell(
                        onTap: () async {
                          final SharedPreferences sharedPreferences =
                              await SharedPreferences.getInstance();
                          sharedPreferences.remove('token');
                          // Navigator.pushReplacementNamed(context, '/loginPage');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(19)),
                          height: 50,
                          width: MediaQuery.sizeOf(context).width - 20,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white,
                                ),
                                60.widthBox,
                                const Text(
                                  'Logout',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: redColor,
        padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top, bottom: 70),
        child: Column(
          children: [
            CircleAvatar(
              minRadius: 20,
              maxRadius: 35,
              backgroundColor: Colors.orange,
              child: Image(
                image: AssetImage('assets/images/Profile.png'),
                height: 50,
              ),
            ),
            10.heightBox,
            Text(
              userName ?? "$userName",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              email ?? "$email",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          30.heightBox,
          ListView.builder(
            shrinkWrap: true,
            itemCount: userDetails.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  AcountInfoIcon[index],
                  height: 25,
                  width: 25,
                ),
                title: Text(userDetails[index].toString()),
                trailing: Homeicon[index],
                onTap: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      );
}
