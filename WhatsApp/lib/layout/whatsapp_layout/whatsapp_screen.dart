import 'package:flutter/material.dart';
import 'package:whatsapp/modules/calls/calls.dart';
import 'package:whatsapp/modules/chats/chats.dart';
import 'package:whatsapp/modules/status/status.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                ),
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.more_vert,
                ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
