
import 'package:chit_chat/chatScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ChatUsers{
  String name;
  String profession;
  String location;
  ChatUsers({required this.name,required this.profession,required this.location});
}
class _MyHomePageState extends State<MyHomePage> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", profession: "Dancer", location: "Australia"),
    ChatUsers(name: "Vishal Agrawal", profession: "Android App Developer", location: "India"),
    ChatUsers(name: "Annu", profession: "Web Developer", location: "America"),
    ChatUsers(name: "AJIT SINGH", profession: "Property Dealer", location: "South Africa"),
    ChatUsers(name: "Trilok", profession: "Web Designer", location: "India"),
    ChatUsers(name: "Manisha", profession: "Teacher", location: "India"),
    ChatUsers(name: "Lokesh", profession: "Software Engg.", location: "Canada"),
    ChatUsers(name: "Eminem", profession: "Rapper", location: "America"),
    ChatUsers(name: "Bruce Lee", profession: "Martial Artist", location: "Amereica"),
    ChatUsers(name: "Chester B.", profession: "Singer", location: "America"),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SafeArea(
                child: ListView.builder(padding: EdgeInsets.all(8.0),
                  itemCount: chatUsers.length,
                  itemBuilder: (context, index) {
                    return Card(//                           <-- Card widget
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('assets/pic.png'),height: 50,width: 50,alignment: Alignment.center,),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Row(

                                        children: [
                                          GestureDetector(

                                              child: Text(
                                            chatUsers[index].name,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => chatScreenPage(title: '',name:chatUsers[index].name,
                                                      profession:chatUsers[index].profession,)),
                                            );
                                          },),
                                          SizedBox(width: 20,),
                                          Text("xxxxxx7554", style: TextStyle(fontSize: 10, color: Colors.black,),),
                                        ],
                                      ),

                                      Text(chatUsers[index].profession, style: TextStyle(fontSize: 12, color: Colors.black,),),
                                      SizedBox(height: 5,),
                                      Text(chatUsers[index].location, style: TextStyle(fontSize: 10, color: Colors.grey,),),


                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(icon: Icon(Icons.add,color: Colors.grey,), onPressed: null,),
                                      SizedBox(height: 10,),
                                      Text("Tap to connect", style: TextStyle(fontSize: 10, color: Colors.black,),),
                                    ],
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),

                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
