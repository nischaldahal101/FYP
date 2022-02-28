import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fyp/pages/bookrooms.dart';
import 'package:fyp/doctor_details.dart';
import 'package:fyp/emergency.dart';
import 'package:fyp/pages/doctorsbook.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int selectedIndex = 0;
    List<IconData> data = [Icons.notification_important];

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/robert.png"),
                )),
          ],
        ),
        //drawer
        drawer: Drawer(
          child: ListView(
            children: [
              //header
              UserAccountsDrawerHeader(
                accountName: const Text('Nischal Dahal'),
                accountEmail: const Text('Nischaldahal101@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/robert.png")),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: const Text('My Profile'),
                  leading: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: const Text('My Report'),
                  leading: Icon(
                    Icons.copy,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: const Text('About'),
                  leading: Icon(
                    Icons.help,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 175,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: const Text('Logout'),
                  leading: Icon(
                    Icons.logout,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                child: const Text(
                  'Hello Nischal',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff363636),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color(0xff363636),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                width: size.width,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    healthCategories('assets/lungs.png', 'Respiratory', '2'),
                    healthCategories('assets/brain.png', 'Neuro', '3'),
                    healthCategories('assets/tooth.png', 'Dental', '2'),
                    healthCategories('assets/bone.png', 'Bone', '5'),
                    healthCategories('assets/heart.png', 'Cardio', '2')
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35, left: 20),
                width: size.width,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Text(
                        'Room Category',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    roomCategories('assets/suite.jpg', 'Suite', '2', 'Rs. 8000',
                        'Very luxury room', '1A'),
                    roomCategories('assets/deluxe.jpg', 'Deluxe', '3',
                        'Rs. 6000', 'luxury room', '1B'),
                    roomCategories(
                        'assets/twinroom.jpg',
                        'Twin Sharing',
                        '2',
                        'Rs. 5000',
                        'Two bed shared between two patients',
                        '1C'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35, left: 20),
                width: size.width,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Text(
                        'Doctors',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(right: 20, left: 300),
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xff363636),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookDoctor()));
                        },
                      ),
                    ),
                    Container(
                      height: 120,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: ListView(
                        children: [
                          doctorList(
                              'assets/doctor1.jpg',
                              'Dr. Rabinda Khunjeli',
                              'Sr. Consultant Pulmonologist'),
                          doctorList('assets/doctor2.jpg',
                              'Dr. Rabinda Khunjeli', 'Senior Nephrologist'),
                          doctorList('assets/doctor5.jpg', 'Dr. Ajit Nepal',
                              'Sr. Consultant ENT Surgeon'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: emergencynavbar(selectedIndex, data));
  }

  Widget emergencynavbar(selectedIndex, data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        child: Container(
          height: 30,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                    if (i == 0) {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmergencyService()));
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 250),
                  width: 25,
                  decoration: BoxDecoration(
                    border: i == selectedIndex
                        ? const Border(
                            top: BorderSide(width: 1.5, color: Colors.white))
                        : null,
                  ),
                  child: Icon(
                    data[i],
                    size: 25,
                    color: i == selectedIndex
                        ? Colors.grey.shade800
                        : Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }

// Health fields
  Widget healthCategories(String image, String name, String drQuantity) {
    return GestureDetector(
        onTap: () {
          print('Hello');
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          width: 180,
          decoration: BoxDecoration(
            color: const Color(0xff107163),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(image),
              ),
              Container(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: const Color(0xffd9fffa).withOpacity(.07),
                ),
                child: Text(
                  drQuantity,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

// doctor List
  Widget doctorList(
      String doctorimage, String doctorname, String doctorspeciality) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DoctorDetails(
                      doctorimage: doctorimage,
                      doctorname: doctorname,
                      doctorspeciality: doctorspeciality,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 120,
              width: 70,
              child: Image.asset(doctorimage),
            ),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        doctorname,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        doctorspeciality,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }

// Room Categories
  Widget roomCategories(String image, String roomName, String roomQuantity,
      String roomPrice, String roomDescription, String roomId) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BookRoom(
                      roomId: roomId,
                      roomType: roomName,
                      roomPhoto: image,
                      roomDescription: roomDescription,
                      roomPrice: roomPrice,
                      roomQuantity: roomQuantity)));
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          width: 180,
          decoration: BoxDecoration(
            color: const Color(0xff107163),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                height: 80,
                child: Image.asset(image),
              ),
              Container(
                child: Text(
                  roomName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: const Color(0xffd9fffa).withOpacity(.07),
                ),
                child: Text(
                  roomQuantity,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
