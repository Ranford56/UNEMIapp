import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:convert';

import 'package:unemi/customs/DropDown.dart';
import 'package:flutter/material.dart';
import 'package:unemi/customs/NavDrawer.dart';
import 'package:unemi/customs/Buttons.dart';
import 'package:unemi/utils/const.dart';
import 'package:unemi/utils/widgetFunc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:edge_detection/edge_detection.dart';
import 'package:http/http.dart' as http;

class LandingScreen  extends StatelessWidget {
  const LandingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;
    File? imagen;

    uploadImage() async {
      final request = http.MultipartRequest("POST", Uri.parse('https://djangoocr-production.up.railway.app/api'));
      final headers = {"Content-type": "multipart/form-data"};
      //se añade la imagen al POST
      var imgname = imagen!.path.split('/').last;
      request.files.add(http.MultipartFile(
          'Imagen', imagen!.readAsBytes().asStream(), imagen!.lengthSync(),
          filename: imgname));

      //se añade parametros al POST
      request.fields['Preguntas'] = '20';
      request.fields['Elecciones'] = '4';
      request.fields['Respuestas'] = '';
      //se añade los headers
      request.headers.addAll(headers);

      //envia la peticion
      final response = await request.send();
      
      //respuesta
      http.Response res = await http.Response.fromStream(response);

      //si hay error en el print de la respuesta, entonces imprime error
      try {
        final resJson = jsonDecode(res.body);
        print(resJson);
        const snackBar = SnackBar(
          content: Text('Se subio el archivo'),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } on Exception catch (_) {
        const snackBar = SnackBar(
          content: Text('Error al subir'),
        );

        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar.
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

    }

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
                      imagen = File(imagePath!);
                      uploadImage();
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