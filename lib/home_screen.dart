import 'package:flutter/material.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075E40),
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
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
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Broadcast'),
                        ),
                        PopupMenuItem(
                          value: '1',
                          child: Text('Linked Devices'),
                        ),
                        PopupMenuItem(
                          value: '1',
                          child: Text('Settings'),
                        )
                      ]),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/14221558/pexels-photo-14221558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Flutter Dev'),
                      subtitle: Text('Front End'),
                      trailing: Text('3:52 AM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/14221558/pexels-photo-14221558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('My Status'),
                      subtitle: Text('Tap to add status update'),
                    );
                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/14221558/pexels-photo-14221558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Flutter Dev'),
                      subtitle: Text(index / 2 == 0
                          ? 'You missed audio call'
                          : 'You have missed the video call'),
                      trailing:
                          Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
