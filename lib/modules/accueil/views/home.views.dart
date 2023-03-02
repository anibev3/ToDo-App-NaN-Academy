import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  bool isChecked = false;
  final List<String> _tache = ["Exemple tache"];

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page d'accueil"),
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Row(
            //     children: [
            //       const Text(
            //         "Listes des taches",
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //       const Spacer(),
            //       ElevatedButton(onPressed: (() {}), child: Text("ajouter"))
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: TextField(
            //     onSubmitted: ((String value) {
            //       ajouterTache(value);
            //     }),
            //     decoration: const InputDecoration(
            //       border: OutlineInputBorder(),
            //       enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10))),
            //       labelText: 'Entrez la tache ici',
            //       hintText: 'Entrez la tache ici',
            //     ),
            //     autofocus: false,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    onSubmitted: ((String value) {
                      ajouterTache(value);
                    }),
                    controller: username,
                    decoration: InputDecoration(
                      labelText: "Entrez la tache ici",
                      prefixIcon: const Icon(Icons.people),
                      border: mes_bordures(),
                      enabledBorder: mes_bordures(),
                      focusedBorder: mes_focusborder(),
                    )),
              ),
            ),
            const Divider(),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Card(
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         CheckboxListTile(
            //           title: const Text('Premiere tache du matin'),
            //           value: isChecked,
            //           onChanged: (bool? value) {
            //             setState(() {
            //               isChecked = value!;
            //             });
            //           },
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(bottom: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             children: const [
            //               Icon(Icons.edit),
            //               SizedBox(width: 20),
            //               Icon(Icons.delete),
            //               SizedBox(width: 25),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // Expanded(
            //   child: ListView.builder(
            //     itemCount: _tache.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ListTile(
            //         title: Text(_tache[index]),
            //         trailing: IconButton(
            //           icon: Icon(Icons.delete),
            //           onPressed: () {
            //             _removeTask(index);
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Listes des taches",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tache.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                        title: Text(_tache[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _editTask(index);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _removeTask(index);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void ajouterTache(String task) {
    setState(() {
      _tache.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tache.removeAt(index);
    });
  }

  void _editTask(int index) async {
    final result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        String editedTask = _tache[index];
        return AlertDialog(
          title: const Text('Modifier la tâche'),
          content: TextField(
            autofocus: true,
            controller: TextEditingController(text: editedTask),
            onChanged: (value) {
              editedTask = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(editedTask);
              },
              child: const Text('Enregistrer'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        _tache[index] = result;
      });
    }
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder mes_bordures() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ));
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder mes_focusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.greenAccent,
          width: 3,
        ));
  }
}
