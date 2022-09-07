import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/alert.dart';

class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  TextEditingController search = TextEditingController();
  bool autocorrect = true;
  bool enableSuggestion = true;
  var color1 = Colors.red;
  var color2 = Color.fromARGB(235, 28, 53, 100);
  var color3 = Colors.white;
  var color4 = Colors.green;
  var color5 = Colors.orange;
  var color6 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: color6),
      home: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            child: TextFormField(
              autocorrect: true,
              enableSuggestions: true,
              controller: search,
              decoration: InputDecoration(
                hintText: 'Search in mail...',
              ),
            ),
            onTap: () {},
          ),
          actions: [
            Icon(
              Icons.account_circle,
              color: color2,
              size: 35,
            ),
            SizedBox(
              width: 20,
            ),
          ],
          backgroundColor: Colors.white70,
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(
            Icons.edit_outlined,
            color: color1,
          ),
          onPressed: () {},
          label: Text(
            'Compose',
            style: TextStyle(color: color1),
          ),
          backgroundColor: color3,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'Inbox',
                  style: TextStyle(
                      color: color6, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color2,
                  ),
                  title: Text(
                    'FirstBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        'today',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      Icon(Icons.star_border_outlined)
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color1,
                  ),
                  title: Text(
                    'ZenithBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        'today',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color3,
                  ),
                  title: Text(
                    'SkyBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '17: 00',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      Icon(Icons.star_border_outlined)
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: Colors.yellow,
                  ),
                  title: Text(
                    'MTN Nigeria',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '16: 45',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color2,
                  ),
                  title: Text(
                    'FirstBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '12: 30',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color5,
                  ),
                  title: Text(
                    'Syntex',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '08: 00',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color4,
                  ),
                  title: Text(
                    'Agrico Plc.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '07: 30',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color2,
                  ),
                  title: Text(
                    'FirstBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        'yesterday',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color5,
                  ),
                  title: Text(
                    'RizonyEmpire',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        'yesterday',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color2,
                  ),
                  title: Text(
                    'FirstBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '2 days ago',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.pause_circle_filled,
                    size: 40,
                    color: color2,
                  ),
                  title: Text(
                    'FirstBank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Are you ready for the big win coming month.... we are all set to work',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        'lastweek',
                        style: TextStyle(fontSize: 12, color: color6),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star_border_outlined,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(225, 255, 255, 255),
          child: ListView(
            children: [
              DrawerHeader(
                margin: EdgeInsets.all(1),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Gmail',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
              ),
              ListTile(
                trailing: Text('99+'),
                leading: Icon(Icons.all_inbox),
                title: Text('All Inboxes'),
                onTap: () {},
              ),
              ListTile(
                trailing: Text('99+'),
                leading: Icon(Icons.inbox),
                title: Text('Primary'),
                onTap: () {},
              ),
              ListTile(
                trailing: Container(
                  width: 60,
                  height: 18,
                  child: Center(
                      child: Text(
                    '99 new',
                    style: TextStyle(color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(235, 28, 53, 100),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                leading: Icon(Icons.people),
                title: Text('social'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.sell),
                title: Text('Promotion'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star_border_outlined),
                title: Text('All Inboxes'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.query_builder),
                title: Text('Snoozed'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.label_important_outline),
                title: Text('Important'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text('Sent'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.schedule_send),
                title: Text('Schedule'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.note_add_outlined),
                title: Text('Draft'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.library_add),
                title: Text('All mail'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.report_gmailerrorred_outlined),
                title: Text('Spam'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.delete_outline_outlined),
                title: Text('Trash'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Create new'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.mark_email_unread_rounded,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.video_camera_back_outlined,
                  ),
                ),
                label: ""),
          ],
          selectedItemColor: color1,
          unselectedItemColor: color6,
        ),
      ),
    );
  }
}
