import 'package:flutter/material.dart';
import 'package:WHATSAPP_UI/pop%20up%20menu%20screens/linked_devices.dart';
import 'package:whatsapp_ui_clone/pop%20up%20menu%20screens/new_broadcast.dart';
import 'package:whatsapp_ui_clone/pop%20up%20menu%20screens/new_group.dart';
import 'package:whatsapp_ui_clone/pop%20up%20menu%20screens/settings.dart';
import 'package:whatsapp_ui_clone/pop%20up%20menu%20screens/starred_messages.dart';
import 'package:whatsapp_ui_clone/screens/calls_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.groups),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20.0,
            ),
            const Icon(Icons.search_outlined),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewGroup(),
                        ),
                      );
                    },
                    child: const Text(
                      'New group',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewBroadcast(),
                        ),
                      );
                    },
                    child: const Text(
                      'New broadcast',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LinkedDevices(),
                        ),
                      );
                    },
                    child: const Text(
                      'Linked devices',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StarredMessages(),
                        ),
                      );
                    },
                    child: const Text(
                      'Starred messages',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ),
                      );
                    },
                    child: const Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Working'),
            ),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
