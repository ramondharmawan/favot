import 'package:favoting/constants/r.dart';
import 'package:favoting/view/component/navbar.dart';
import 'package:favoting/view/component/profile-socmed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.secondary,
      // appBar: AppBar(
      //   backgroundColor: R.colors.secondary,
      //   shadowColor: Colors.transparent,
      //   title: Text(
      //     'Profile',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: -30,
            left: -30,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(999.0),
                child: Container(
                  color: R.colors.primary,
                  width: 150,
                  height: 150,
                )),
          ),
          Positioned(
            top: -80,
            right: -100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(999.0),
                child: Container(
                  color: Colors.pink[100],
                  width: 300,
                  height: 300,
                )),
          ),
          Positioned(
            bottom: -150,
            left: -120,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(999.0),
                child: Container(
                  color: Colors.pink[100],
                  width: 400,
                  height: 400,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                      'https://cdnb.artstation.com/p/assets/images/images/034/457/411/small/shin-min-jeong-.jpg',
                      width: 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bambang Handoko",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 33),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada consectetur mollis. ',
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  SizedBox(height: 10.0),
                  ProfileSocmed(),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white24,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 25.0,
                              color: Color.fromARGB(102, 250, 184, 217))
                        ]),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Transform.scale(
                          scale: 1.8,
                          child: Image.asset(
                            R.assets.imgTicket,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('3 Tickets Available',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: R.colors.primary,
                                fontSize: 20))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Upcoming Event',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 150,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image.network(
                            'https://www.loket.com/images/dummy/blogs/5/banner.jpg',
                            width: 200,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Crypto Party"),
                              Text('December 28, 2022'),
                              Text('Savaya Beach Club')
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
        ),
        child: Container(color: Colors.pink[100], child: NavBar()),
      ),
    );
  }
}
