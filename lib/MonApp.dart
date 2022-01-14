import 'package:annuaire/Contact.dart';
import 'package:annuaire/formulaire.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'MyMain');
  }
}

class OneContact extends StatelessWidget {
  final String nom, prenom, numero, mail;
  const OneContact(
      {Key? key,
      required this.nom,
      required this.prenom,
      required this.mail,
      required this.numero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        nom + " " + prenom,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 30),
                      ),
                      const Spacer(),
                      PopupMenuButton<String>(
                        child:  Icon(Icons.more_vert_outlined),
                            onSelected: (result){
                              if(result == 'Modifier'){
                                Get.toNamed("/contact_detail");
                              }
                              if(result == "Supprimer")
                              {
                                
                              }
                            },
                            itemBuilder: (BuildContext context) {
                              return [
                                 const PopupMenuItem(
                                  child: Text("Supprimer"),
                                  value: "Supprimer",
                                 
                                  
                                ),
                                 const PopupMenuItem(
                                  child:  Text("Modifier"),
                                  value: "Modifier",
                                )
                              ];
                            }),
                      
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.call_outlined),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          numero,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.email_outlined),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          mail,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    final List<Contact> listEquipement = [
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
    ];
    final int _length = listEquipement.length;
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(
        child: const Text("Mon App"),
      )),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: _size.width,
            height: _size.height * 0.88,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: List.generate(
                listEquipement.length,
                (int index) => InkWell(
                  onTap: () => Get.toNamed("/contact_detail"),
                  child: OneContact(
                      nom: listEquipement[index].nom,
                      prenom: listEquipement[index].prenom,
                      numero: listEquipement[index].numeroMobile,
                      mail: listEquipement[index].mail),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Get.toNamed(
            "/contact_detail",
          ),
        },
        tooltip: 'Ajouter Contact',
        child: const Icon(Icons.add),
      ),
    );
  }
}
