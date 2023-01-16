import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home_screen';
  const HomeScreen({Key? key}) : super(key: key);

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
          title: Text('WhatsApp'),
          bottom: const TabBar(
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
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Logout'),
                ),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children:  [
            Text('Camera'),
            ListView.builder(
                itemCount: 1,
                itemBuilder:(context,index) {
                  return const ListTile(
                    leading: CircleAvatar(
                   backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ),
                    title: Text('XXX Tentacion'),
                    subtitle: Text('Fuck em all?'),
                    trailing: Text('6:36 PM'),

                    );
                }
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder:(context,index) {


                  if(index==0){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color:Colors.green,
                                      width:3
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: Text('John Wick'),
                            subtitle: Text('35m ago'),

                          ),
                        ],
                      ),
                    );


                  }else {
                    return  ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:Colors.green,
                                width:3
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('35m ago'),

                    );

                  }

                }
            ),
            ListView.builder(
                itemCount: 4,
                itemBuilder:(context,index) {
                  return  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text(index /2==0?'you missed audio call':'call time is 12:33'),
                    trailing: Icon(index /2==0?Icons.phone:Icons.video_call),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
