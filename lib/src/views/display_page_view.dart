// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:findflames/src/utils/constants/size_config.dart';
import 'package:findflames/src/utils/constants/strings.dart';
import 'package:findflames/src/utils/widgets/Custom_container.dart';
import 'package:findflames/src/utils/widgets/Custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayPageview extends StatefulWidget {
  const DisplayPageview({super.key});

  @override
  State<DisplayPageview> createState() => _DisplayPageviewState();
}

class _DisplayPageviewState extends State<DisplayPageview> {
  String _textSearch = "";
  void updateList(String value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(top: 1.0, left: 7.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(profileimage),
            )),
            toolbarOpacity: 1.0,
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: Color.fromARGB(255, 250, 245, 245),
        shadowColor:  Color.fromARGB(255, 250, 245, 245),
        backgroundColor: Color.fromARGB(255, 250, 245, 245),
        title: Text(
          "Puzzels",
          style: GoogleFonts.nunito(
              color: Color.fromRGBO(255, 95, 143, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: null,
              icon: ImageIcon(AssetImage("lib/src/config/images/setting4.png")),
              color: Colors.black,
              splashRadius: 20,
              splashColor: Colors.blue,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 245, 245),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 245, 245),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: CustomContainer(
                              displaytext: "Likes",
                              inputimg: like,
                              option: false,
                              likes: true),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: CustomContainer(
                            displaytext: "Tony",
                            inputimg: tony,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: CustomContainer(
                            displaytext: "James",
                            inputimg: james,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: CustomContainer(
                            displaytext: "Jordon",
                            inputimg: jordon,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildSearchBar(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CustomListTile(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // Text(
          //   "Search",
          //   style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 25.0,
          //       fontWeight: FontWeight.bold),
          // ),
          // SizedBox(
          //   height: 20.0,
          // ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
          ),
          // SizedBox(height: 5.0,),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}



//  body: Container(
//           child: Column(children: [
//             // SafeArea(
//             // child: SingleChildScrollView(
//             // scrollDirection: Axis.horizontal,
//             // Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               // children: <Widget>[
//                 ListTile(
//                   leading: Padding(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
//                     child: const ImageUploadWidget(
//                       imageadd: profileimage,
//                     ),
//                   ),
//                   title: Text("Jordon"),
//                   subtitle: Text("Hii!"),
//                   trailing: 
//                   // Column(
//                     // children: [
//                       Text("13:10"),
//                       // SizedBox(height: 10, width: 10, decoration: Box())
//                     // ],
//                   // ),
//                 )
//               ],
//               // ),
//               // ),
//             ),
//           // ]
//           ),
          
//         );