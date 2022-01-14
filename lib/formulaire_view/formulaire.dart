import 'package:annuaire/list_view/list_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:annuaire/modele/Contact.dart';
import 'package:annuaire/formulaire_view/formulaire_controller.dart';
import 'package:get/get.dart';

final _formKey = GlobalKey<FormState>();
final _formKey2 = GlobalKey<FormState>();

final clientTemp = Contact(
          nom: "",
          prenom: "",
          mail: "",
          numeroPro: "",
          numeroFixe: "",
          numeroMobile: "",
          poste: "",
          societe: "",
);

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeForm(title: 'Formulaire');
  }
}

class HomeForm extends StatelessWidget {
  final String title;
  const HomeForm({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // condition : _formKey.currentState!.validate()
              if (_formKey.currentState!.validate()&&_formKey2.currentState!.validate() ) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Formulaire validé')),
                    );
                    listContact.add(clientTemp);
                    Get.toNamed('/contacts');
                  }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            InformationForm(),
            CoordoneForm(),
          ],
        ),
      ),
    );
  }
}


class CoordoneForm extends StatefulWidget {
  const CoordoneForm({Key? key}) : super(key: key);

  @override
  CoordoneFormState createState() {
    return CoordoneFormState();
  }
}

class CoordoneFormState extends State<CoordoneForm> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
      child: Container(
          width: 700,
          height: 330,
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text("Coordonées",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '07 77 46 68 43',
                      prefixIcon: Icon(
                        Icons.call,
                      ),
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.numeroMobile = value ?? "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '07 77 46 68 43',
                      prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.numeroPro = value ?? "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '07 77 46 68 43',
                      prefixIcon: Icon(
                        Icons.local_printshop_rounded,
                      ),
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.numeroFixe = value ?? "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'votremail@mail.fr',
                      prefixIcon: Icon(
                        Icons.forward_to_inbox,
                      ),
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.mail = value ?? "",
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class InformationForm extends StatefulWidget {
  const InformationForm({Key? key}) : super(key: key);

  @override
  InformationFormState createState() {
    return InformationFormState();
  }
}

class InformationFormState extends State<InformationForm> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Container(
          width: 700,
          height: 230,
          color: Colors.white,
          child: Form(
            key: _formKey2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text("Informations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: Container(
                          width: 140,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Nom',
                              border: OutlineInputBorder(),
                              isDense: true, // important line
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 20, 20, 0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            onSaved: (value) => clientTemp.nom = value ?? "",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                            width: 110,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Prenom',
                                border: OutlineInputBorder(),
                                isDense: true, // important line
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 20, 20, 0),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              onSaved: (value) => clientTemp.prenom = value ?? "",
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Societe',
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.societe = value ?? "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Poste',
                      border: OutlineInputBorder(),
                      isDense: true, // important line
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) => clientTemp.poste = value ?? "",
                  ),
                ),
              ],
            ),
          )),
    );
  }
}


