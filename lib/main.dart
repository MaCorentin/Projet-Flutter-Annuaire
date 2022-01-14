import 'package:annuaire/MonApp.dart';
import 'package:annuaire/formulaire.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Annuaire",
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(250, 236, 240, 241),
          primarySwatch: Colors.red),
      initialRoute: "/contacts",
      getPages: [
        GetPage(name: "/contacts",page:() =>  ContactList()),
        GetPage(name: "/contact_detail",page: () =>  ContactDetail())
      ],
     
    );
  }
}

