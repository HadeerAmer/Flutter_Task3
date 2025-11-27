import 'package:flutter/material.dart';

class Screen_Project extends StatefulWidget {
  const Screen_Project({super.key});

  @override
  State<Screen_Project> createState() => _Screen_ProjectState();
}

class _Screen_ProjectState extends State<Screen_Project> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text("Social Dashboard",
            style: TextStyle(
              fontSize: 23,
            ),

          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ) ,
        body: Center(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 20,
              ),
              Padding(padding: const
              EdgeInsets.only(left: 30),
                child: Text("Profiles",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
              ),

              Container(
                height: 50,
                width: 200,
              ),

              Row( mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(radius: 40,
                        backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/4140/4140048.png",)
                        ,),
                      Positioned(
                        bottom: 2,
                        right: 10,
                        child:
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),

                    ],
                  ),

                  SizedBox(width: 30),
                  Image.network("https://cdn-icons-png.flaticon.com/128/4139/4139981.png",
                    width: 80,
                    height: 80,),

                  SizedBox(width: 30),

                  Stack(
                    children: [
                      CircleAvatar(radius: 40,
                        backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/4140/4140037.png",)
                        ,),
                      Positioned(
                        bottom: 2,
                        right: 10,
                        child:
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row( mainAxisAlignment:MainAxisAlignment.center,
                children: [

                  Image.network("https://cdn-icons-png.flaticon.com/128/4139/4139981.png",
                    width: 80,
                    height: 80,),
                  SizedBox(width: 30),
                  Stack(
                    children: [
                      CircleAvatar(radius: 40,
                        backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/4140/4140051.png",)
                        ,),
                      Positioned(
                        bottom: 2,
                        right: 10,
                        child:
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),

                    ],
                  ),
                  SizedBox(width: 30),
                  Image.network("https://cdn-icons-png.flaticon.com/128/4139/4139951.png",
                    width: 80,
                    height: 80,),
                ],

              ),
              Container(
                width: 70,
                height: 70,
              ),
              Padding(padding: const
              EdgeInsets.only(left: 30),
                child: Text("Featured Post",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
              ),
              Stack(
                children: [
                  Container(

                    height: 200,
                    width: 800,

                    child: Image.network("https://th.bing.com/th/id/R.70181b53ea945238c4553734ca80080d?rik=0SdxwVhp1uJGuw&pid=ImgRaw&r=0",
                      fit: BoxFit.cover,),
                  ),

                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        color: Colors.black.withOpacity(0.5),
                        alignment: Alignment.centerLeft,
                        child: Text("Amazing View!",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                  )
                ],
              ),
              Row(
                children: [
                  Text("Likes: $counter",
                    style: TextStyle(
                        fontSize: 17
                    ),),
                  Container(
                      width: 225
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      counter ++;
                    });
                  },
                    icon: Icon(Icons.thumb_up),
                  ),
                  Text("Like")
                ],
              )
            ],
          ),
        )
    );
  }
}