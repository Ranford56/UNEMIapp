import 'dart:typed_data';
import 'dart:ui';
import 'package:unemi/customs/DropDown.dart';
import 'package:flutter/material.dart';
import 'package:unemi/customs/NavDrawer.dart';
import 'package:unemi/customs/Buttons.dart';
import 'package:unemi/utils/const.dart';
import 'package:unemi/utils/widgetFunc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:edge_detection/edge_detection.dart';

class LandingScreen  extends StatelessWidget {
  const LandingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;

    return SafeArea(
        child: Scaffold(
          drawer: NavDrawer(),
        body: Container(
          width: size.width,
          height: size.height,
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  addVerticalScape(padding),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CornerButtons(icon: Icon(Icons.menu, color: COLOR_TERCIARY)),
                         
                        BrightnessButton(icon: Icon(Icons.brightness_medium, color: COLOR_SECONDARY)),
                      ],
                    ),
                  ),
                  Spacer(flex: 1,),
                  Bounceable(
                    onTap: () async { 
                      String? imagePath = await EdgeDetection.detectEdge;
                      print(imagePath);
                    }, 
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: const [
                        Icon(Icons.crop_free_rounded, size:250, color: COLOR_SECONDARY,),
                        Positioned(child:Icon(Icons.camera, size:80, color: COLOR_TERCIARY))
                      ]
                    ),

                  ),
                  Spacer(flex: 1,),
                  DropDown(),
                  Spacer(flex: 4,),

                ],
              );
            }
          ),
        ),
      ),
    );
  }
}