import 'package:flutter/material.dart';
import 'package:myapp/screens/contacts/contacts_list.dart';

class AddContactView extends StatefulWidget {
  final Map<String, String>? user;
  final int? index;

  // Constructor for AddContactView, accepting optional user data and index for editing an existing contact.
  const AddContactView({super.key, this.user, this.index});

  @override
  State<AddContactView> createState() => _AddContactViewState();
}

class _AddContactViewState extends State<AddContactView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      nameController.text = widget.user!['name'] ?? '';
      phoneController.text = widget.user!['phone'] ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Contact')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name'),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
            controller: nameController,
          ),
          SizedBox(height: 10),
          Text('Phone'),
          TextField(
            decoration: InputDecoration(
              labelText: 'Phone',
              border: OutlineInputBorder(),
            ),
            controller: phoneController,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add contact logic here
              if (widget.index != null) {
                // Update existing contact
                users[widget.index!] = {
                  'name': nameController.text,
                  'phone': phoneController.text,
                };
              } else {
                // Add new contact
                users.add({
                  'name': nameController.text,
                  'phone': phoneController.text,
                });
              }
              setState(() {}); // Refresh the contacts list
              Navigator.pop(context);

              print('Contact added: ${nameController.text}, ${phoneController.text}');
            },
            child: Text('Add Contact'),
          ),
        ],
      ),
    );
  }
}
