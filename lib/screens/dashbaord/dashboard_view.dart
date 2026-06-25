import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastMessageController = TextEditingController();
  List users = [
    {"name": "Owais", 'LastMessage': "Helloo....."},
    {"name": "Abdullah", 'LastMessage': "Hiiiiiii....."},
    {"name": "Ali", 'LastMessage': "Kahan ho????....."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${users[index]['name']}"),
            trailing: IconButton(
              onPressed: () {
                Future<void> _showMyDialog() async {
                  return showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('EDIT User'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              TextField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Name',
                                ),
                              ),
                              SizedBox(height: 20),
                              TextField(
                                controller: lastMessageController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Last Message',
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Edit'),
                            onPressed: () {
                              users[index] = {
                                "name": nameController.text,
                                'LastMessage': users[index]['LastMessage'],
                              };
                              nameController.clear();
                              lastMessageController.clear();
                              setState(() {});
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }

                _showMyDialog();
              },
              icon: Icon(Icons.edit_outlined),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Future<void> _showMyDialog() async {
            return showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Add'),
                      onPressed: () {
                        users.add({
                          "name": nameController.text,
                          'LastMessage': "New User",
                        });
                        setState(() {});
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          }

          _showMyDialog();
        },
      ),
    );
  }
}


// for(var i =0; i < 10; i++) {
//   print(i);
// }