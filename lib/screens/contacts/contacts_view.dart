import 'package:flutter/material.dart';
import 'package:myapp/screens/contacts/add-contact/add-contact_view.dart';
import 'package:myapp/screens/contacts/contacts_list.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {

  @override
  void initState() {

    print('initState called');
    // TODO: implement initState
    super.initState();
  }

  didUpdateWidget(covariant ContactsView oldWidget) {
    print('didUpdateWidget called');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'), actions: [
        IconButton(
          onPressed: () {
            setState(() {});
          },
          icon: Icon(Icons.refresh),
        )
      ]),
      // 0 => 1 => 2 => 3 => 4 => 5 => 6 => 7 => 8 => 9 => 10
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            onLongPress: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('${users[index]['name'][0]}'),
            ),
            title: Text('${users[index]['name']}'),
            subtitle: Text('${users[index]['phone']}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call, color: Colors.green),
                SizedBox(width: 10),
                Icon(Icons.message, color: Colors.blue),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.orange),
                  onPressed: () {
                    // Edit contact logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddContactView(user: users[index], index: index),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContactView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// void main() {

//   // 0 => 1 => 2 => 3 => 4 => 5 => 6 => 7 => 8 => 9 => 10
//   List users = [
//     {'name': 'Alice', 'phone': '123-456-7890'},
//     {'name': 'Bob', 'phone': '234-567-8901'},
//     {'name': 'Charlie', 'phone': '345-678-9012'},
//     {'name': 'David', 'phone': '456-789-0123'},
//     {'name': 'Eve', 'phone': '567-890-1234'}
//   ];
//   for(var i =0; i< users.length; i++) {
//     print('Hello ${users[i]['name']}');
//   }

// }