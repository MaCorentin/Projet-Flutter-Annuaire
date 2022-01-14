import 'package:flutter/material.dart';

class CoordoneForm extends StatefulWidget {
  const CoordoneForm({Key? key}) : super(key: key);

  @override
  CoordoneFormState createState() {
    return CoordoneFormState();
  }
}

class CoordoneFormState extends State<CoordoneForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      child: Container(
          width: 700,
          height: 350,
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
                  ),
                ),
                /*Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),*/
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
          width: 700,
          height: 260,
          color: Colors.white,
          child: Form(
            key: _formKey,
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
                  padding: EdgeInsets.only(top: 20),
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
                  ),
                ),
                /*Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),*/
              ],
            ),
          )),
    );
  }
}

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
    final _formKey = GlobalKey<FormState>();
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
              if (true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Formulaire validé')),
                    );
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
