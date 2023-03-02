import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page d'accueil"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Listes des taches",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (() {}), child: Text("ajouter"))
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CheckboxListTile(
                          title: const Text('Premiere tache du matin'),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.edit),
                          SizedBox(width: 20),
                          Icon(Icons.delete),
                          SizedBox(width: 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
