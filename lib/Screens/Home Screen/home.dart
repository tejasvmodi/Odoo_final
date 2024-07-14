import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:librabry_management_system_odoo/Screens/Home%20Screen/bookdetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ISAvailable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    )),
                hintText: 'Search',
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(20, 20),
                  ),
                ),
                hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: const Text(
              'Recommendation',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // ignore: sized_box_for_whitespace
            child: Row(
              children: [
                for (int i = 0; i <= 10; i++)
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 0.02),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.12),
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(23, 23)),
                            image: DecorationImage(
                              image: AssetImage('assets/book1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.height * 0.05,
                          top: MediaQuery.of(context).size.height * 0.20,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.14,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(23, 23)),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, spreadRadius: 4)
                                ]),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    ' Mockingbird    sdfbhid ubwkd bkdbhfbhwifbh ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('List of Books',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return  GestureDetector(

                onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Bookdetails(imagelink: 'assets/book1.jpeg'),),);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left :8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/book1.jpeg'),fit: BoxFit.cover)
                            ),
                          ),
                         Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Title : ToKill a Mokingbird', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                            const Text('Author name : Smit c Joshi ',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                            Text('ISAvailable :$ISAvailable',style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                          ],
                         )
                        ],
                      ),
                       const SizedBox(height: 10,)
                    ],
                  ),
                ),
              );
              
            },
          ))
        ],
      ),
    );
  }
}
