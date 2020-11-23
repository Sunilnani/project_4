import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Padding(
                        padding: EdgeInsets.only(left:8.0),
                        child: Icon(Icons.camera_alt_outlined),
                      ),
                      SizedBox(width: 20,),
                      Text("Instagram",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
                      SizedBox(width: 180,),
                      Icon(Icons.apps)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:AssetImage("img/samantha.png"),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Your Story",style: TextStyle(color: Colors.black,fontSize: 12,),)
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:AssetImage("img/ram.jpg"),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Your Story",style: TextStyle(color: Colors.black,fontSize: 12,),)
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:AssetImage("img/nidhi.jpg"),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Your Story",style: TextStyle(color: Colors.black,fontSize: 12,),)
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:AssetImage("img/ntr.jpg"),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Your Story",style: TextStyle(color: Colors.black,fontSize: 12,),)
                          ],
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("img/rakul.jpg"),
                          radius: 27,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("Rakul preet Singh ",style: TextStyle(color: Colors.black,fontSize:13,fontWeight: FontWeight.w400),),
                      SizedBox(width: 120,),
                      Icon(Icons.privacy_tip)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child:Image.asset("img/rrr.jpg",fit: BoxFit.cover,height: 260,),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        child:Padding(
                          padding: EdgeInsets.only(left:8.0),
                          child: Image.asset("img/love.png",fit: BoxFit.cover,height: 20,),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child:Padding(
                          padding: EdgeInsets.only(left:8.0),
                          child: Image.asset("img/Comment1.png",fit: BoxFit.cover,height: 25,),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child:Padding(
                          padding: EdgeInsets.only(left:8.0),
                          child: Image.asset("img/send.png",fit: BoxFit.cover,height: 20,),
                        ),
                      ),
                      SizedBox(width: 180,),
                      Icon(Icons.thumb_up_alt_rounded),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(right: 280),
                      child: Text(" 2k Likes",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w700,fontSize: 13),)
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),

                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        cursorColor: Colors.black54,
                        decoration: InputDecoration(
                          icon: Icon(Icons.comment,color: Colors.black12,size: 20,),
                          border: InputBorder.none,
                          hintText: "Comment here",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child:Image.asset("img/rrr.jpg",fit: BoxFit.cover,height: 260,),
                  ),

                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.camera),
                title: Text('Camera'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),

      ),
    );
  }
}
