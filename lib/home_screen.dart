import 'package:flutter/material.dart';

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
            backgroundColor:  Colors.teal,
            title: const Text('Whatsapp'),
            bottom: const  TabBar(
            tabs: [
              Tab(
                child:Icon(Icons.camera_alt_outlined,color: Colors.white,)
                  ,
              ),
              Tab(
                child:Text('Chats',style: TextStyle(
                  color: Colors.white,
                ),),

              ),
              Tab(
                child:Text('Status', style: TextStyle(
                  color: Colors.white,
                )),

              ),
              Tab(
                child:Text('Calls',style: TextStyle(
                  color: Colors.white,
                ),),

              ),



          ],
        ),
            actions: [
             const Icon(Icons.search_sharp),
              const SizedBox(width: 10,),
             PopupMenuButton(
                 icon: const Icon(Icons.more_vert_sharp),
                 itemBuilder: (context,) => const  [
                   PopupMenuItem(
                   value:'1',
                   child:Text('New Group'),
                   ),
                   PopupMenuItem(
                       value: '2',
                       child: Text('New Broadcast') ),
                   PopupMenuItem(
                       value:'3',
                       child:Text('Linked Devices') ),
                   PopupMenuItem(
                       value: '4',
                       child:Text('Starred Messages') ),
                   PopupMenuItem(
                     value:'5',
                     child:Text('Settings'),
                   ),


             ]),
              SizedBox(width: 10,),
            ],
      ),
          body: TabBarView(
            children:[
              const  Image(image: AssetImage('image/m3.jpg'),),
              ListView.builder(
                  itemCount: 80,
                  itemBuilder:(context,index) {

                return const ListTile(

                  leading: CircleAvatar(
                    backgroundImage:  AssetImage('image/m1.jpg')
                  ),
                  title: Text('Client 1'),
                  subtitle: Text('Your Project was great!...'),
                  trailing: Text('9:05 pm'),
                );
              }),

              ListView.builder(
                  itemCount: 80,
                  itemBuilder:(context,index) {

                    return  ListTile(

                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width:4,
                          ),

                          color: Colors.green,
                        ),
                        child: CircleAvatar(
                            backgroundImage:  AssetImage('image/m1.jpg')
                        ),
                      ),
                      title: Text('Mazhar College'),
                      subtitle: Text('10 min ago'),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder:(context,index) {

                    return  ListTile(

                      leading: CircleAvatar(
                          backgroundImage:  AssetImage('image/m2.jpg')
                      ),
                      title: Text(index/2==0?'Abu G :) :) :)...': 'Ammi G :) :) :) ..'),
                      subtitle: Text(index/2==0?'You Missed a Audio Call...': 'You Missed a Video Call.....'),
                      trailing: Icon(index/2 == 0?Icons.phone_callback_sharp : Icons.missed_video_call_rounded ),
                    );
                  }),
                          ]
          ),
    )
    );
  }
}
