import 'package:findflames/src/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size_config.dart';

class CustomContainer extends StatelessWidget {
  final String displaytext;
  final String inputimg;
  final bool option;
  final bool likes;
  const CustomContainer({
    super.key,
    required this.displaytext,
    required this.inputimg,
    this.option = true, 
    this.likes = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig(context).getProportionateScreenHeight(130),
      width: SizeConfig(context).getProportionateScreenWidth(90),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig(context).getProportionateroundess())),
          color: Colors.grey,
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage(inputimg))),
      child: Stack(
        children: <Widget>[
          likes == true ?
          Positioned(
            child: Align(
              alignment: FractionalOffset.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const IconButton(
                    onPressed: null,
                    icon: ImageIcon(
                      size: 200,
                      AssetImage(heart),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                   Text("20", style: GoogleFonts.nunito(
                    color: Colors.white, fontSize: 20,
                    fontWeight: FontWeight.bold
                   ),)
                ],
              ),
            ),
          ) : Text(""),
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig(context).getProportionateroundess()))),
                  height: SizeConfig(context).getProportionateScreenHeight(18),
                  width: SizeConfig(context).getProportionateScreenWidth(70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(displaytext),
                      option == true
                          ? Padding(
                              padding: const EdgeInsets.only(left: 1.0),
                              child: Image.asset(verify),
                            )
                          : const Text(""),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
