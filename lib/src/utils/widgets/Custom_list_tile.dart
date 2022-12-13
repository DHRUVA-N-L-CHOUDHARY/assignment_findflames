import 'package:findflames/src/models/message_model.dart';
import 'package:findflames/src/utils/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: recentChats.length,
          itemBuilder: (context, int index) {
            final recentChat = recentChats[index];
            return Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(recentChat.avatar),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              recentChat.sender,
                              style: recentChat.unreadCount == 0
                                  ? GoogleFonts.nunito(
                                      fontSize: 20, color: Colors.black87)
                                  : GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                            ),
                            recentChat.isauth == true
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Image.asset(verify),
                                  )
                                : const Text(""),
                          ],
                        ),
                        Text(
                          recentChat.text,
                          style: recentChat.unreadCount == 0
                              ? GoogleFonts.nunito(
                                  fontSize: 16, color: Colors.black87)
                              : recentChat.text.toLowerCase() == "typing..."
                                  ? GoogleFonts.nunito(
                                      fontStyle: FontStyle.italic,
                                      color: const Color.fromRGBO(255, 95, 143, 1),
                                      fontSize: 16
                                    )
                                  : GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        recentChat.time,
                        style: recentChat.unreadCount == 0
                            ? GoogleFonts.nunito(
                                fontSize: 11, color: Colors.black87)
                            : GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black),
                        // : MyTheme.bodyTextTime.copyWith(
                        //     fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      recentChat.unreadCount == 0
                          ? const Text("")
                          : CircleAvatar(
                              radius: 8,
                              backgroundColor: const Color.fromRGBO(255, 95, 143, 1),
                              child: recentChat.unreadCount > 9
                                  // ignore: prefer_const_constructors
                                  ? Text(
                                      "9+",
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(
                                      recentChat.unreadCount.toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
