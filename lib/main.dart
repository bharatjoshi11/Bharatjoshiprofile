import 'package:flutter/material.dart';


void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body:ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              buildtop(),
          name(),

    Card(
    color: Colors.deepPurple[100],
    margin: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 25.0,
    ),
    child: ListTile(
    leading: Icon(
    Icons.phone,
    color: Colors.lightBlueAccent,
    ),
    title: Text(

    'Phone : +91 9958746587',
    style: TextStyle(
    color: Colors.lightBlueAccent,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    fontSize: 15.0),
    ),
    ),
    ),
              Card(
                color: Colors.deepPurple[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'E-main : raghavj309@gmail.com',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 15.0),
                  ),
                ),
              ),

              Card(
                color: Colors.deepPurple[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'DOB- 30/08/2001',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 15.0),
                  ),
                ),
              ),
              buildcontent(),
          SizedBox(height: 16,),
              // footer
              Card(
                color: Colors.deepPurple[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.travel_explore_rounded,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Traveling',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Card(
                color: Colors.deepPurple[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.sports_cricket_rounded,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Cricket',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Card(
                color: Colors.deepPurple[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.music_note_rounded,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Music',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 15.0),
                  ),
                ),
              ),
                   Divider(),
            ],
          )
      ),
    );


  }




  Widget name()=>Column(
    children: [
      const SizedBox(height: 8,),
      Text(
        'Bharat joshi',
        style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,),
      ),
      const SizedBox(height: 8,),
      Text(
            'CSE Student',
             
        style: TextStyle(color:Colors.grey[600],fontSize: 15, ),
      ),

      const SizedBox(height: 16),
      Divider(),
    ],
  );


  Widget buildcontent()=> Column(
    children:[
      const SizedBox(height: 16),

      Divider(),

      buildabout(),
      const SizedBox(height: 32),

      Divider(),
      educational(),
      const SizedBox(height: 32,),
      Divider(),
      project(),
      Divider(),
      const SizedBox(height: 16,),
      Text(
        'Hobbies             ',
        style: TextStyle(color:Colors.deepPurple[300],fontSize: 36,fontWeight: FontWeight.w400),
      ),



    ],
  );


Widget educational()=> Container(
  padding: EdgeInsets.symmetric(horizontal: 40),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [


      SizedBox(height: 20),
      Text(
        'Education Details   ',
        style: TextStyle(color:Colors.deepPurple[300],fontSize: 36,fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        'B.tech Computer Science          '
            'Panipat institute of engineering and technology. Haryana                                            '
            'Pursuing'
        ,


        style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),


      const SizedBox(height: 16),
      Text(
        'Senior Secondary School-CBSE Board                                           '
            'SBBM sarvodya vidyalaya Delhi         '
            'Percentage - 74%'
        ,





        style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),

      const SizedBox(height: 16),
      Text(
        'High School - CBSE Board            '
            'Mother Khazani convent school Delhi                                              '
            'CGPA - 9.6'
        ,


        style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),


    ],
  ),
);



  Widget buildtop(){
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );


  }
  Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.network(
        'https://images.pexels.com/photos/215780/pexels-photo-215780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ));

  Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage('images/bharat.jpeg'),
      );
}





  Widget buildabout()=> Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(

          'Address :-',
          style: TextStyle(color: Colors.deepPurple[300], fontSize: 36,fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'H.no 97/11 F-Block Gali no 12, Tomar colony Burari Delhi',
          style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
        ),




      ],
    ),
  );


Widget project()=> Container(

  padding: EdgeInsets.symmetric(horizontal: 40),
  child: Column(

    crossAxisAlignment: CrossAxisAlignment.center,

    children: [

      SizedBox(height: 20),
      Text(
        'B.Tech Project                                              ',
        style: TextStyle(color:Colors.deepPurple[300],fontSize: 36,fontWeight: FontWeight.w400,

        ),
      ),

      SizedBox(height: 16),

      Text(
        'Project - Coincap                                      ',
        style: TextStyle(fontSize: 30,height: 1.4,),
      ),
      SizedBox(height: 16,),

      Text(
        'Coincap is a web-app which provides Fundamental and technical data of a crypto currency.it also provides a feature by which we can transfer ethereum from one wallet to another.                                     ',
        style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),
      SizedBox(height: 16,),


      Text(
        'Team size - 3                                            ',
         style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),

      SizedBox(height: 16,),

      Text(
        'Tech Stack- MERN Stack,Web3-js,Ether-js,Metamask,ethereum',
         style: TextStyle(color:Colors.grey[600],fontSize: 18,height: 1.4,),
      ),


      SizedBox(height: 16,),

    ],
  ),
  );

// social icon



